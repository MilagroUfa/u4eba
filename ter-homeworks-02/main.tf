resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}


data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_os
}
resource "yandex_compute_instance" "platform1" {
  name        = local.vm_web_instance
  platform_id = var.vm_web_str
  metadata    = var.metadata1
  resources {
    cores         = var.vm_resources_all.vm_web_res.cores
    memory        = var.vm_resources_all.vm_web_res.memory
    core_fraction = var.vm_resources_all.vm_web_res.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

}
resource "yandex_compute_instance" "platform2" {
  name        = local.vm_db_instance
  platform_id = var.vm_web_str
  metadata    = var.metadata1
  resources {
    cores         = var.vm_resources_all.vm_db_res.cores
    memory        = var.vm_resources_all.vm_db_res.memory
    core_fraction = var.vm_resources_all.vm_db_res.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }
}
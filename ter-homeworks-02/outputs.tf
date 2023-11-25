output "VM_ip_external" {
  value = {
    instance_web = yandex_compute_instance.platform1.name
    external_ip1 = yandex_compute_instance.platform1.network_interface.0.nat_ip_address
    instance_db = yandex_compute_instance.platform2.name
    external_ip2 = yandex_compute_instance.platform2.network_interface.0.nat_ip_address
  }
}
output "John" {
  value = "${local.test_map.admin} is admin for ${local.test_list[length(local.test_list)-1]} server based on OS ${local.servers[local.test_list[length(local.test_list)-1]]["image"]} with ${local.servers[local.test_list[length(local.test_list)-1]]["cpu"]} vcpu, ${local.servers[local.test_list[length(local.test_list)-1]]["ram"]} ram, and ${local.servers.production["disks"][0]}, ${local.servers.production["disks"][1]}, ${local.servers.production["disks"][2]}, ${local.servers.production["disks"][3]} virtual disks."
}
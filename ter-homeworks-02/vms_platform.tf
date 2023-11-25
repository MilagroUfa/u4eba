variable "vm_web_os" {
    type = string
    description = "ubuntu release name"
    default = "ubuntu-2004-lts"
}

variable "vm_web_str" {
    type = string
    description = "standart platform ID"
    default = "standard-v1"
}

variable "vm_resources_all" {
    type = map(map(number))
    description = "cores fraction memory"
    default = {
        vm_web_res = {
        cores         = 2
        memory        = 1
        core_fraction = 5
        }
        vm_db_res = {
        cores         = 2
        memory        = 2
        core_fraction = 20
        }
    }
}

variable "metadata1" {
  description = "metadata for vms"
  type        = map(string)
  default     = {
    serial-port-enable = "1"
    ssh-keys          = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMBuo2YB+qNQSuc5sdTz2vQCdYEeK0Bx8APPgBLHSB3y root@testvm"
  }
}
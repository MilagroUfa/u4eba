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

variable "vm_resources" {
    type = map(map(number))
    description = "cores cpu memory"
    default = {
        cores         = 2
        memory        = 1
        core_fraction = 5
    }
}


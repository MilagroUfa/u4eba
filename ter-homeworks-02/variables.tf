###cloud vars
variable "token" {
  type        = string
  default     = "y0_AgAAAAAM2CggAATuwQAAAADxDWjsMWGMhSoIRCqh2_d5_doR58Jz84Y"
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  default     = "b1g49md705rs9b7h1k8k"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1g2s2qs64p5kn8r45lh"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-c"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.1.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "myycnetwork"
  description = "VPC network & subnet name"
}

###ssh vars

# variable "vms_ssh_root_key" {
#   type        = string
#   default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMBuo2YB+qNQSuc5sdTz2vQCdYEeK0Bx8APPgBLHSB3y root@testvm"
#   description = "ssh-keygen -t ed25519"
# }

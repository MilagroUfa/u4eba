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

variable "vms_ssh_root_key" {
  type        = string
  default     = "b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZWQyNTUxOQAAACDAbqNmAfqjUErnObHU89r0AnWBHitAcfADz4ASx0gd8gAAAJCybC/msmwv5gAAAAtzc2gtZWQyNTUxOQAAACDAbqNmAfqjUErnObHU89r0AnWBHitAcfADz4ASx0gd8gAAAEAVRQgE4y3hUzGF/88kzTdkPWWnIlbBSUQ4BB8zdXLG38Buo2YB+qNQSuc5sdTz2vQCdYEeK0Bx8APPgBLHSB3yAAAAC3Jvb3RAdGVzdHZtAQI="
  description = "ssh-keygen -t ed25519"
}

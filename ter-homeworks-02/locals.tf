locals {
  project = "netology-develop-platform"
  env_web = "web"
  env_db  = "db"
  vm_web_instance = "${local.project}-${local.env_web}"
  vm_db_instance = "${local.project}-${local.env_db}"
}
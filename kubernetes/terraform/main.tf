provider "kubernetes" {
    host = var.host

    config_path    = var.config_path
    config_context = var.config_context
}

module "create_namespace" {
  source = "./modules/create_ns"
}

module "create_limit_range" {
  source = "./modules/create_lr"
}

module "create_resource_quota" {
  source = "./modules/create_rq"
}

module "create_role_and_role_binding" {
  source = "./modules/create_role_and_rb"
}
provider "kubernetes" {
    host = var.host

    config_path    = var.config_path
    config_context = var.config_context

}

module "schedule_terraform_destroy" {
    count = terraform.workspace == var.test_workspace ? 1 : 0    
    source = "./modules/tf_destroy"
    duration = var.duration
    units = var.units
}

module "create_namespace" {
    count = terraform.workspace == var.test_workspace ? 1 : 0
    source = "./modules/create_ns"
}

module "create_limit_range" {
    count = terraform.workspace == var.test_workspace ? 1 : 0
    source = "./modules/create_lr"
}

module "create_resource_quota" {
    count = terraform.workspace == var.test_workspace ? 1 : 0
    source = "./modules/create_rq"
}

module "create_role_and_role_binding" {
    count = terraform.workspace == var.test_workspace ? 1 : 0
    source = "./modules/create_role_and_rb"
}
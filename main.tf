module "vpc" {
  source = "./modules/vpc"
  region = var.region
}

module "compute" {
  source = "./modules/compute"
  region = var.region
  zone = var.zone
  depends_on = [module.vpc]
}

module "cloud_storage" {
  source = "./modules/cloud_storage"
}
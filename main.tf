module "vpc" {
  source = "./modules/vpc"
  name   = var.vpc_name

  vpc_cidr              = var.vpc_cidr
  public_subnet_1_cidr  = var.public_subnet_1_cidr
  public_subnet_2_cidr  = var.public_subnet_2_cidr
  private_subnet_1_cidr = var.private_subnet_1_cidr
  private_subnet_2_cidr = var.private_subnet_2_cidr
  az1                   = var.az1
  az2                   = var.az2
}

module "ec2" {
  source            = "./modules/ec2"
  name              = var.ec2_name
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = [module.vpc.public_subnet1_id, module.vpc.public_subnet2_id]
  key_name          = var.key_name
}

module "rds" {
  source                = "./modules/rds"
  name                  = var.rds_name
  vpc_id                = module.vpc.vpc_id
  db_instance_class     = var.db_instance_class
  db_storage            = var.db_storage
  db_name               = var.db_name
  db_username           = var.db_username
  db_password           = var.db_password
  private_subnet_1_id   = module.vpc.private_subnet1_id
  private_subnet_2_id   = module.vpc.private_subnet2_id
}

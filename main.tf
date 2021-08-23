locals {
  name   = "${var.environment}-${var.name}"
  region = var.region
  tags = {
    Owner       = "user"
    Environment = var.environment
  }
}

################################################################################
# Supporting Resources
################################################################################

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 2"

  name = local.name
  cidr = var.cidr

  azs              = ["${local.region}a", "${local.region}b", "${local.region}c"]
  public_subnets   = var.subnets.public_subnets
  private_subnets  = var.subnets.private_subnets
  database_subnets = var.subnets.database_subnets

  create_database_subnet_group = true

  tags = local.tags
}

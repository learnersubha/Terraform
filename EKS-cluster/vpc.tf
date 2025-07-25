module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.13"  
  
  
  name = "${var.name}-vpc"
  cidr = var.cidr
  azs = var.azs
  private_subnets = var.private_subnets
  public_subnets = var.public_subnets
  intra_subnets = var.intra_subnets
  enable_nat_gateway = true
  enable_vpn_gateway = true
  tags = {
    Terraform = "true"
    Environment = var.env
  }
}

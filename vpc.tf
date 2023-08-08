module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = var.cidr-block

  azs             = [local.az_a, local.az_b, local.az_c]
  public_subnets  = var.public-cidrs

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
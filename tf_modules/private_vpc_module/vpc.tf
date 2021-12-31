module "shared_vars" {
  source = "../shared_vars"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${module.shared_vars.vpc_name}"
  cidr = "${module.shared_vars.vpc_cidr}"

  azs             = ["eu-west-2a", "eu-west-2b"]
  private_subnets = ["${module.shared_vars.private_subnet_cidr_1}", "${module.shared_vars.private_subnet_cidr_2}"]
  public_subnets  = ["${module.shared_vars.public_subnet_cidr_1}", "${module.shared_vars.public_subnet_cidr_2}"]

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    Environment = "STAGE"
  }
}
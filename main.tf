provider "aws" {
  region  = "eu-west-2"
  profile = "nawaz-terraform"
}

module "vpc_module" {
  source = "./tf_modules/private_vpc_module"
}
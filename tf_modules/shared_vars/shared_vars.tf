locals {

    env = "${terraform.workspace}"
    vpc_name_env = {
        default = "MBVDEV-XC-VPC"
        stage = "MBVSTAGE-XC-VPC"
    }
    vpc_cidr_env = {
        default = "10.0.0.0/16"
        stage = "172.18.0.0/16"
    }
    
    private_subnet_cidr_1_env = {
        default = "10.0.10.0/24"
        stage = "172.18.10.0/24"
    }
    private_subnet_cidr_2_env = {
        default = "10.0.20.0/24"
        stage = "172.18.20.0/24"
    }

    public_subnet_cidr_1_env = {
        default = "10.0.11.0/24"
        stage = "172.18.11.0/24"
    }
    public_subnet_cidr_2_env = {
        default = "10.0.21.0/24"
        stage = "172.18.21.0/24"
    }

    # LOOKUPS
    vpc_name = "${lookup(local.vpc_name_env, local.env)}"
    vpc_cidr = "${lookup(local.vpc_cidr_env, local.env)}"
    private_subnet_cidr_1 = "${lookup(local.private_subnet_cidr_1_env, local.env)}"
    private_subnet_cidr_2 = "${lookup(local.private_subnet_cidr_2_env, local.env)}"
    public_subnet_cidr_1 = "${lookup(local.public_subnet_cidr_1_env, local.env)}"
    public_subnet_cidr_2 = "${lookup(local.public_subnet_cidr_2_env, local.env)}"
}

output "vpc_name" {
    value = "${local.vpc_name}"
}

output "vpc_cidr" {
    value = "${local.vpc_cidr}"
}

output "private_subnet_cidr_1" {
    value = "${local.private_subnet_cidr_1}"
}

output "private_subnet_cidr_2" {
    value = "${local.private_subnet_cidr_2}"
}

output "public_subnet_cidr_1" {
    value = "${local.public_subnet_cidr_1}"
}
output "public_subnet_cidr_2" {
    value = "${local.public_subnet_cidr_2}"
}
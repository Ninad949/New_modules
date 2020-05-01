provider "aws" {
  version = "~> 2.0"
  region  = "us-west-1"
}

module "my_vpc" {
  
    source= "/home/repo_tera/Terraform_modules/New_modules/modules"
  
    vpc_cidr = "10.0.0.0/16"

  tenancy = "default"

  vpc_id ="${ module.my_vpc.vpc_id}"

  count_private_subnet = 2

  count_public_subnet = 2

private_subnets = "${module.vpc_module.private_subnets}"

public_subnets = "${module.vpc_module.public_subnets}"

#public_subnet_id = "${module.my_vpc.public_subnet_id}"

# private_subnet_id = "${module.my_vpc.private_subnet_id}"

}


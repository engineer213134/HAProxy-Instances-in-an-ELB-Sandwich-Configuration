#Provider defined with in the root
provider "aws" {
  region = var.region
}

#Define a local block
locals {

    instance_name = ["instance-1","instnace-2"]
    availability_zones = ["us-west-2b", "us-west-2c"]
}

#Ec2 instance module01
module "ec2_instance" {
  source = "./modules/ec2-instance"

  count = length(local.instance_names)

    instance_name       = module.ec2-instance.instance_name
    ami_id              = module.ec2-instance.ami_id
    instance_type       = module.ec2-instance.instance_type
    key_name            = module.ec2-instance.key_name
    vpc_security_groups = module.ec2-instance.vpc_security_groups
    subnet_id           = module.ec2-instance.subnet_id
    user_data           = module.ec2-instance.user_data
    availability_zone   = element(local.availability_zones, count.index)
    }















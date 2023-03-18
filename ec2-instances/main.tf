#This is for the ec2 instances
#I am not using an autoscalling group since I am only using two ec2 instnaces
resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  availability_zone = var.availability_zone

  tags = {
    Name = var.instance_name
  }

  key_name = var.key_name

  vpc_security_group_ids = var.vpc_security_groups

  subnet_id = var.subnet_id

  user_data = var.user_data
}




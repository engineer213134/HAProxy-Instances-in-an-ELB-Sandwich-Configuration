variable "instance_name" {
  type        = string
  description = "The name of the EC2 instance"
}

variable "ami_id" {
  type        = string
  description = "The ID of the AMI to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The type of instance to launch"
}

variable "key_name" {
  type        = string
  description = "The name of the key pair to use for the instance"
}

variable "vpc_security_groups" {
  type        = list(string)
  description = "A list of security group IDs to associate with the instance"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet to launch the instance in"
}

variable "user_data" {
  type        = string
  description = "The user data to provide when launching the instance"
}

variable "availability_zone" {
  type        = string
  description = "The availability zone for the EC2 instance"
}
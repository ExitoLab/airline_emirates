//Global variables

variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "region" {
  description = "AWS region"
  default = "us-west-2"
}
variable "availability_zones" {
  type        = "list"
  description = "List of Availability Zones"
  default = ["us-west-2a","us-west-2b","us-west-2c"]
}

// Default variables
variable "vpc_name" {
  description = "VPC name"
  default     = "instance_vpc"
}

variable "cidr_block" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "public_count" {
  default     = 2
  description = "Number of public subnets"
}

variable "private_count" {
  default     = 2
  description = "Number of private subnets"
}

variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "aws_profile" {
  description = "AWS Profile"
  default="default"
}
variable "jenkins_username" {
  description = "Jenkins Username"
  default="challenge"
}

variable "jenkins_password" {
  description = "Jenkins Password"
  default="emirates_airline_001"
}

variable "jenkins_credentials_id" {
  description = "Slaves SSH ID"
  default="101"
}

variable "vpc_id" {
  description = "VPC ID"
  #default = "vpc-03e8d4432b7503a8c"
}

variable "region" {
  description = "AWS Region"
  default = "us-west-2"
}

variable "shared_credentials_file" {
  description = "AWS credentials file path"
  #default = "C:\airline_emirates\terraform\pipeline\cred.txt"
}

variable "vpc_private_subnets" {
  description = "List of VPC private subnets"
  #type        = list(string)
  #default      ="subnet-00bc21357fc648ac8"
}

variable "vpc_public_subnets" {
  description = "List of VPC Public subnets"
  #type        = list(string)
  #default      ="subnet-0e178d81bccc1f677"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "key_name" {
  description = "SSH KeyPair"
  default="admin_key"
}

## Jenkins Master
variable "jenkins_master_instance_type" {
  description = "Jenkins Master instance type"
  default     = "t2.micro"
}

// Jenkins Slaves
variable "jenkins_slave_instance_type" {
  description = "Jenkins Slave instance type"
  default     = "t2.micro"
}

variable "min_jenkins_slaves" {
  description = "Min slaves"
  default     = "3"
}

variable "max_jenkins_slaves" {
  description = "Max slaves"
  default     = "5"
}

variable "bastion_sg_id" {
  description = "Bastion security group ID"
  #default = "sg-0a6c2e31a50169a23"
}
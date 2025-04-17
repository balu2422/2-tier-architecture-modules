# variables.tf - Define all input variables

variable "region" {
  description = "The AWS region to deploy the infrastructure"
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "ec2_name" {
  description = "Name for the EC2 instances"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2"
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name for EC2 instances"
  type        = string
}

variable "rds_name" {
  description = "Name of the RDS instance"
  type        = string
}

variable "db_instance_class" {
  description = "RDS instance class"
  default     = "db.t2.micro"
}

variable "db_storage" {
  description = "Allocated storage for the RDS instance"
  default     = 20
}

variable "db_name" {
  description = "Database name"
  default     = "mydatabase"
}

variable "db_username" {
  description = "Username for the RDS instance"
  default     = "admin"
}

variable "db_password" {
  description = "Password for the RDS instance"
  sensitive   = true
}


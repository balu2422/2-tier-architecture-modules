variable "name" {
  description = "Name for the RDS instance"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where RDS will be deployed"
  type        = string
}

variable "private_subnet_1_id" {
  description = "Private subnet 1 for RDS subnet group"
  type        = string
}

variable "private_subnet_2_id" {
  description = "Private subnet 2 for RDS subnet group"
  type        = string
}

variable "db_instance_class" {
  description = "Instance class for the RDS database"
  type        = string
}

variable "db_storage" {
  description = "Allocated storage for the RDS instance"
  type        = number
}

variable "db_name" {
  description = "Name of the database"
  type        = string
}

variable "db_username" {
  description = "Username for the RDS instance"
  type        = string
}

variable "db_password" {
  description = "Password for the RDS instance"
  type        = string
  sensitive   = true
}

region              = "us-east-1"

vpc_name            = "my-vpc"
vpc_cidr            = "10.0.0.0/16"
public_subnet_1_cidr  = "10.0.1.0/24"
public_subnet_2_cidr  = "10.0.2.0/24"
private_subnet_1_cidr = "10.0.3.0/24"
private_subnet_2_cidr = "10.0.4.0/24"
az1                 = "us-east-1a"
az2                 = "us-east-1b"

ec2_name            = "my-ec2"
ami_id              = "ami-084568db4383264d4"  # Replace with your actual AMI ID
instance_type       = "t2.micro"
key_name            = "my-module-key"  # Replace with your actual SSH key pair name

rds_name            = "my-rds"
db_instance_class   = "db.t2.micro"
db_storage          = 20
db_name             = "mydatabase"
db_username         = "admin"
db_password         = "password123"

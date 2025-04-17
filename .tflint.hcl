plugin "aws" {
  enabled = true
  version = "0.29.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
  region  = "us-east-1"
}

# Format of output (valid values: default, compact, json)
config {
  format = "compact"
}

# --- EC2 Best Practices ---

# EC2 instance type must be valid
rule "aws_instance_invalid_type" {
  enabled = true
}

# EC2 must not be launched in default VPC
rule "aws_instance_not_in_default_vpc" {
  enabled = true
}

# EC2 AMI ID must be valid
rule "aws_instance_invalid_ami" {
  enabled = true
}

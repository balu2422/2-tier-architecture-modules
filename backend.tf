
terraform {
  backend "s3" {
    bucket         = "2-tier-architecture-modules"  
    key            = "terraform/modulestate"
    region         = "us-east-1"
    dynamodb_table = "2-tier-architecture-modules-table" 
    encrypt        = true 
  }
}



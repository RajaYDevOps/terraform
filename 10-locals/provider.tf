terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.54"
    }
  }

#remote state storage location
backend "s3" {
    bucket         = "remote-state-file-90s"
    key            = "locals-demo.tfstate"
    region         = "us-east-1"
    encrypt        = true
    
    # Enable native S3 state locking (Available in Terraform 1.10+)
    use_lockfile   = true 
  }

}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
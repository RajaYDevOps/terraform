backend "s3" {
    bucket         = "90s-dev"
    key            = "workspace-demo.tfstate"
    region         = "us-east-1"
    encrypt        = true
    
    # Enable native S3 state locking (Available in Terraform 1.10+)
    use_lockfile   = true 
  }
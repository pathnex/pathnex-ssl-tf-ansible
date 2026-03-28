terraform {
  backend "s3" {
    bucket         = "pathnex-march-2026-batch" # Your S3 bucket name
    key            = "ssl/terraform.tfstate"    # Folder/Path inside bucket
    region         = "ap-south-1"               # Region
    encrypt        = true
  }
}


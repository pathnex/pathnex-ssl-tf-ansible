# Configure AWS Provider
provider "aws" {
  region = "ap-south-1"                               # Change to your preferred region
}

resource "aws_instance" "pathnex" {
  ami                    = "ami-0f559c3642608c138"    # Change to your AMI if needed
  instance_type          = "t3.small"           # Change to the instance size you need
  count                  = 1
  key_name               = "Pathnex.pem"          # Change to your own key name
  subnet_id              = "subnet-095c754c9a7d7b2b4"   # Change to your Subnet
  vpc_security_group_ids = ["sg-0680ef70a519ab38c"]     # Change to your Security group
  tags = {
    Name = "pathnex-ec2"
  }
}

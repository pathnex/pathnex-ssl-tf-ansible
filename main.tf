# Configure AWS Provider
provider "aws" {
  region = "ap-south-1"                               # Change to your preferred region
}

resource "aws_instance" "pathnex" {
  ami                    = "ami-0f559c3642608c138"    # Change to your AMI if needed
  instance_type          = "c7i-flex.large"           # Change to the instance size you need
  count                  = 1
  key_name               = "Pathnex-ec2-key"          # Change to your own key name
  subnet_id              = "subnet-0e30fbb2ffaa857"   # Change to your Subnet
  vpc_security_group_ids = ["sg-6c76c984d9e1309"]     # Change to your Security group
  tags = {
    Name = "pathnex-ec2"
  }
}

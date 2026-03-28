output "ec2_public_ips" {
  value = aws_instance.pathnex[*].public_ip
}
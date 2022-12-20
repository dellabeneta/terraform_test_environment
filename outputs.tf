output "ec2_instance_pip" {
  value = aws_instance.instance.public_ip
}

output "rds_instance_arn" {
  value = aws_db_instance.db_instance.address
}


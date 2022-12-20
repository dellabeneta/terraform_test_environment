resource "aws_instance" "instance" {
  ami                         = "ami-0b0dcb5067f052a63"
  instance_type               = "t2.micro"
  key_name                    = "test"
  subnet_id                   = aws_subnet.subnet1.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.security_group_ec2.id]
  //user_data_base64            = filebase64("userdata.sh")
}




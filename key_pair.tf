resource "aws_key_pair" "key_pair" {
  key_name   = "test"
  public_key = file("~/.ssh/id_rsa.pub")
}
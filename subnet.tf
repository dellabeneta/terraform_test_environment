resource "aws_subnet" "subnet1" {
  availability_zone = "us-east-1e"
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "subnet2" {
  availability_zone = "us-east-1f"
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.2.0/24"
}
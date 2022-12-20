resource "aws_db_instance" "db_instance" {
  identifier = "wordpress-db-instance"
  allocated_storage      = 10
  db_name                = "wordpressdb"
  engine                 = "mysql"
  engine_version         = "8.0.28"
  instance_class         = "db.t3.micro"
  username               = "wordpressuser"
  password               = "wordpresspass"
  parameter_group_name   = "default.mysql8.0"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.db_subnet.id
  vpc_security_group_ids = [aws_security_group.security_group_rds.id]
  publicly_accessible    = true
}

resource "aws_db_subnet_group" "db_subnet" {
  name       = "db-subnet"
  subnet_ids = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]
}


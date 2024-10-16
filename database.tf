resource "aws_db_subnet_group" "rds_default" {
    name = "main"
    subnet_ids = [aws_subnet.database-private-subnet-1.id, aws_subnet.database-private-subnet-2.id]

    tags = {
        Name = "DB Subnet Group"
    }
}



resource "aws_db_instance" "rds_instance" {
  allocated_storage = 10
  engine = "mysql"
  engine_version = "8.0.20"
  instance_class = "db.t2.micro"
  db_name = "tier_db"
  multi_az = true
  db_subnet_group_name = aws_db_subnet_group.rds_default.id
  username = "testusername"
  password = "testpassword"

  skip_final_snapshot = true
  vpc_security_group_ids = [aws_security_group.database_sg.id]
}

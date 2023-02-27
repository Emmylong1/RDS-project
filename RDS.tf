resource "aws_db_instance" "my-rds" {
  engine                  = "mysql"
  engine_version          = "5.7"
  instance_class          = "db.t2.micro"
  identifier              = "prod-rds-instance"
  username                = "Emmy"
  password                = "Emmylong"
  allocated_storage       = 20
  storage_type            = "gp2"


  tags = {
    name = "myrdsdb"
  }
}

provider "aws" {
  region = "eu-central-1"  
}

resource "aws_db_instance" "database" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "13.11"
  instance_class       = "db.t3.micro"
  identifier           = "mydb"
  username             = "myuser"
  password             = "mypassword"
  license_model       = "postgresql-license"

  tags = {
    Name = "MyDBInstance"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-04e601abe3e1a910f"
  instance_type = "t2.micro"
  key_name      = "aws-new-key-first" 
  tags = {
    Name = "WebInstance"
  }
}
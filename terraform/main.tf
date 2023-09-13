provider "aws" {
  region = "eu-central-1"  
}

resource "aws_instance" "postgres" {
  ami           = "ami-04e601abe3e1a910f"
  instance_type = "t2.micro"
  key_name      = "aws-new-key-first" 
  tags = {
    Name = "PostgresInstance"
  }
}

resource "aws_instance" "web-app" {
  ami           = "ami-04e601abe3e1a910f"
  instance_type = "t2.micro"
  key_name      = "aws-new-key-first" 
  tags = {
    Name = "Web-App"
  }
}
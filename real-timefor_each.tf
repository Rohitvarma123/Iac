resource "aws_instance" "web1" {

  for_each = {
    frontend = "Frontend-Server"
    backend  = "Backend-Server"
    database = "Database-Server"
  }

  ami           = "ami-0150189e4c09ffab5"
  instance_type = "t2.micro"

  tags = {
    Name = each.value
  }
}

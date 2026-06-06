resource "aws_instance" "example" {

  for_each = {
    server1 = "Dev"
    server2 = "Test"
    server3 = "Prod"
  }

  ami           = "ami-0150189e4c09ffab5"
  instance_type = "t2.micro"

  tags = {
    Name = each.value
  }
}

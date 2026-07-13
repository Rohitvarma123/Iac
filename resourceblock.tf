resource "aws_instance" "web" {
  ami           = "ami-0224ce6f9504665ee"
  count         = 1
  instance_type = "t3.micro"
  tags = {
    Name = "webserver"
  }
}

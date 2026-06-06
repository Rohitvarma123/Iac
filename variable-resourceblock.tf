resource "aws_instance" "web2" {

  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "webserver"
  }
}

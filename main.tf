provider "aws" {
  region     = "us-east-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
} 



resource "aws_instance" "web" {
  ami                    = "${var.ami_details}"
  instance_type          = "${var.instance_type}"
  tags = {
    Name = "${var.instance_name}"
  }
}

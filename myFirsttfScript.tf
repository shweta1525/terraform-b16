provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web-server" {
    ami = "ami-0b0dcb5067f052a63"
    instance_type = "t2.micro"
    security_groups = ["my_sg"]
    key_name = "terraform-server"
}
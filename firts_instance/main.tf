provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "instance1" {
    ami = "ami-08d4ac5b634553e16"
    instance_type = "t2.micro"

    tags = {
        Name = "firts_instance"
    }
}
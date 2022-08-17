provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "instance1" {
    ami = var.amis.ubuntu
    instance_type = var.flavor
    
    tags = {
        Name = "firts_instance"
    }
}

output "name" {
    value = aws_instance.instance1.public_ip
}

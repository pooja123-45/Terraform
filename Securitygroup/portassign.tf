provider "aws" {
    region = "us-east-2"
    profile = "mykey"
}

resource "aws_instance" "firstinstance" {
    ami = "ami-0b016c703b95ecbe4"
    instance_type = "t2.micro"
    key_name = "thisiskey"
    vpc_security_group_ids = ["sg-046ab9b2c3264329a", aws_security_group.securitygroup.id]  #vpass as arguments 
    tags = {
        Name = "firstins"
      }

}

resource "aws_security_group" "securitygroup" {
ingress {
from_port = 80
to_port = 80
protocol = "TCP"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port = 443
to_port = 443
protocol = "TCP"
cidr_blocks = ["0.0.0.0/0"]
}

egress{
from_port = 0
to_port = 0
protocol = "-1"  #-1 means it can connect all 
cidr_blocks = ["0.0.0.0/0"]
}
}

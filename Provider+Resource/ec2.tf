provider "aws" {
    region = "us-east-2"
    profile = "mykey"
}

resource "aws_instance" "secondinstance" {
    ami = "ami-0ca4d5db4872d0c28"
    instance_type = "t2.micro"
    key_name = "thisiskey"
    vpc_security_group_ids = ["sg-046ab9b2c3264329a"]

}

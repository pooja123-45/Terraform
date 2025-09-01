provider "aws" {
    region = "us-east-2"
    profile = "mykey"
}

resource "aws_instance" "firstinstance" {
    ami = "ami-0b016c703b95ecbe4"
    instance_type = "t2.micro"
    key_name = "thisiskey"
    vpc_security_group_ids = ["sg-046ab9b2c3264329a"]

}

data "aws_security_group" "mysecuritygroup" {    #use to extract exiting infrasture data
     name = "default" # default is the name of my existing security group
}

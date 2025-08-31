provider "aws" {
    region = "us-east-2"
    profile = "mykey"
}

resource "aws_instance" "firstinstance" {
    ami = "var.this_ami"
    instance_type = "var.this_instance_type"
    key_name = "thisiskey"
    vpc_security_group_ids = ["var.this_sgid"]

}

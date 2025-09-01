provider "aws" {
    region = "us-east-2"
    profile = "mykey"
}

resource "aws_instance" "firstinstance" {
    ami = var.this_ami
    instance_type = var.this_instance_type
    key_name = "thisiskey"
    vpc_security_group_ids = [var.this_sgid]
     tags = {
        Name = "firstins"
      }
output "webserver_pubip" {   # name of output block 
     value = aws_instance.firstinstance.public_ip # pass attribute unique here (public_ip) 
}


}

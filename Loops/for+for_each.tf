provider "aws" {
      region = "us-west-2"
      profile = "mykey"
}

resource "aws_instance" "this_aws_instancenew" {
    for_each = toset(var.imageid)
    ami = each.value
   // vpc_security_group_ids = ["sg-032e1a4a1685a03be"]
   // key_name = "delete_oregon_anup"
    instance_type = "t2.micro"
    tags = {
        name = "webserver"
    }
   
    
}

variable "imageid" {                                  # for_each used here                          
    type = list(string)
    default = ["ami-0b016c703b95ecbe4" , "ami-0cfde0ea8edd312d4"]

}


output "aws_ec2" {                          #for loop used here
  value = [
    for myloop in var.imageid:
        aws_instance.this_aws_instancenew[myloop].public_ip
  ]
}

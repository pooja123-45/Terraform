provider "aws" {
      region = "us-east-2"
      profile = "mykey"
    
}

resource "aws_instance" "this_aws_instancenew" {
    for_each = toset(var.imageid)                      #formet of for_each loop
    ami = each.value                                    #formet

    instance_type = "t2.micro"
    tags = {
        name = "webserver"
    }
   
    
}

variable "imageid" {                  #this we passed in for_each loop
    type = list(string)
    default = ["ami-0b016c703b95ecbe4" , "ami-0cfde0ea8edd312d4"]

}



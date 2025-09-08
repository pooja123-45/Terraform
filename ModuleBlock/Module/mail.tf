module  "ec2" {
    source = "/root/Terraform/ModuleBlock/Resources/Ec2"
      This_api_termination = true
        This_key = "thisiskey"
        This_az  = "us-east-2"
        This_tag =  "webapp"
        This_inst = "t2.micro"
        #This_sg  = ["sg-09d5d9601120f72dd"]
        This_ami = "0e2369dd6317d0d7e"
        this_aws_vpc_id = module.aws_vpc.aws_vpc_id #reference of VPC
        this_aws_instance_subnet = module.aws_vpc.subnet_id #reference of subnet
}

module "aws_vpc" {
        source = "/root/Terraform/ModuleBlock/Resources/VPC"
        this_vpc_cidr_block = "192.168.0.0/16"
        this_vpc_cidr_tags = "vpc"
        this_public_cidr_block  = "192.168.0.0/17"
        this_public_map_pub = true
        this_public_tags = "public"

}



output "subnet_id" {
     value = aws_subnet.this_public.id  
}
 
output "aws_vpc_id" {
  value = aws_vpc.this_vpc.id
}


#we will pass this subnet id and vpc id inn ec2 instance in module file.

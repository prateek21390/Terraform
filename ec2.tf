# resource "aws_instance" "PublicInstance" {
# ami = "ami-08c40ec9ead489470"
# instance_type = "t2.micro"
# subnet_id = aws_subnet.projectsubnet.id
# vpc_security_group_ids = aws_security_group.default.id

# }

# resource "aws_instance" "PublicInstance2" {
# ami = "ami-08c40ec9ead489470"
# instance_type = "t2.micro"
# subnet_id = aws_subnet.projectsubnet2.id
# vpc_security_group_ids = aws_security_group.default.id
# }

resource "aws_launch_configuration" "webapp" {
  
}
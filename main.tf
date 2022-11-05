
# Vpc creation
resource "aws_vpc" "projectvpc" {
  cidr_block = "10.0.0.0/16"
}


#Public subnet 1
resource "aws_subnet" "projectsubnet" {
  vpc_id     = aws_vpc.projectvpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public"
  }
}

#Public sublet 2
resource "aws_subnet" "projectsubnet2" {
  vpc_id     = aws_vpc.projectvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Public2"
  }
}

#Private subnet 1
resource "aws_subnet" "projectprivatesubnet" {
  vpc_id     = aws_vpc.projectvpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"
 tags = {
    Name = "Private"
  }

}

#private subnet 2
resource "aws_subnet" "projectprivatesubnet2" {
  vpc_id     = aws_vpc.projectvpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1b"
 tags = {
    Name = "Private2"
  }
}

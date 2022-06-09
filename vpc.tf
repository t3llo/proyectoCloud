resource "aws_vpc" "projectVPC" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "Project VPC"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.projectVPC.id
}
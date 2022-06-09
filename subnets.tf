resource "aws_subnet" "public_subnet1" {
  vpc_id            = aws_vpc.projectVPC.id
  availability_zone = "us-east-1a"
  cidr_block        = "172.16.1.0/24"
}

resource "aws_subnet" "public_subnet2" {
  vpc_id            = aws_vpc.projectVPC.id
  availability_zone = "us-east-1b"
  cidr_block        = "172.16.2.0/24"
}
resource "aws_subnet" "eks_private_subnet1" {
  vpc_id            = aws_vpc.projectVPC.id
  availability_zone = "us-east-1a"
  cidr_block        = "172.16.3.0/24"
}

resource "aws_subnet" "eks_private_subnet2" {
  vpc_id            = aws_vpc.projectVPC.id
  availability_zone = "us-east-1b"
  cidr_block        = "172.16.4.0/24"
}


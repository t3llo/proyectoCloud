resource "aws_eip" "nat_eip" {
  vpc = true
  tags = {
    Name = "Elastic IP for NAT"
  }
}

resource "aws_eip" "nat_eip2" {
  vpc = true
  tags = {
    Name = "Elastic IP for NAT"
  }
}


resource "aws_nat_gateway" "nat_gw1" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet1.id
  tags = {
    Name = "NAT gateway 1"
  }
}
resource "aws_nat_gateway" "nat_gw2" {
  allocation_id = aws_eip.nat_eip2.id
  subnet_id     = aws_subnet.public_subnet2.id
  tags = {
    Name = "NAT gateway 2"
  }
}
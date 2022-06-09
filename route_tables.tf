#IGW route table and association


resource "aws_route_table" "igw_route_table" {
  vpc_id = aws_vpc.projectVPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "public_subnet1_to_igw" {
  route_table_id = aws_route_table.igw_route_table.id
  subnet_id = aws_subnet.public_subnet1.id
}

resource "aws_route_table_association" "public_subnet2_to_igw" {
  route_table_id = aws_route_table.igw_route_table.id
  subnet_id = aws_subnet.public_subnet2.id
}


#NAT route table and association

resource "aws_route_table" "nat1_route_table" {
  vpc_id = aws_vpc.projectVPC.id

  route {
      cidr_block = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.nat_gw1.id
  }
}

resource "aws_route_table_association" "private_subnet1_to_nat1" {
  route_table_id = aws_route_table.nat1_route_table.id
  subnet_id = aws_subnet.eks_private_subnet1.id
}



resource "aws_route_table" "nat2_route_table" {
  vpc_id = aws_vpc.projectVPC.id

  route {
      cidr_block = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.nat_gw2.id
  }
}

resource "aws_route_table_association" "private_subnet2_to_nat2" {
  route_table_id = aws_route_table.nat2_route_table.id
  subnet_id = aws_subnet.eks_private_subnet2.id
}

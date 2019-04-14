resource "aws_route_table" "public-route-table_terraform" {
  vpc_id = "${aws_vpc.vpc_terraform.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw_terraform.id}"
  }
  tags {
    Name = "public-route-table_terraform"
  }
}

resource "aws_route_table_association" "puclic-route-table-association_terraform" {
    subnet_id = "${aws_subnet.public-subnet-1a_terraform.id}"
    route_table_id = "${aws_route_table.public-route-table_terraform.id}"
}

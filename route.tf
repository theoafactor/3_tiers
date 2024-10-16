## Route Table
resource "aws_route_table" "route" {
  vpc_id = "${aws_vpc.tier_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.tier_igw.id}"
  }

  tags = {
    Name = "Internet Gateway routed"
  }
}

## Associate Route table
resource "aws_route_table_association" "routing_1" {
    subnet_id = "${aws_subnet.frontend-public-subnet-1.id}"
    route_table_id = "${aws_route_table.route.id}"
}

resource "aws_route_table_association" "routing_2" {
    subnet_id = "${aws_subnet.frontend-public-subnet-2.id}"
    route_table_id = "${aws_route_table.route.id}"
}
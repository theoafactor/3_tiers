## Creating Internet Gateway
resource "aws_internet_gateway" "tier_igw"{

    vpc_id = "${aws_vpc.tier_vpc.id}"

}
## Create the Subnet for Frontend for Availability Zone A
resource "aws_subnet" "frontend-public-subnet-1" {
    vpc_id = "${aws_vpc.tier_vpc.id}"
    cidr_block = "${var.public_subnet_1_cidr}"
    map_public_ip_on_launch = true
    availability_zone = "us-east-1a"

    tags = {
        Name = "Frontend Public Subnet A"
    }
}


## Create the Subnet for Frontend for Availability Zone B
resource "aws_subnet" "frontend-public-subnet-2" {
    vpc_id = "${aws_vpc.tier_vpc.id}"
    cidr_block = "${var.public_subnet_2_cidr}"
    map_public_ip_on_launch = true
    availability_zone = "us-east-1b"

    tags = {
        Name = "Frontend Public Subnet B"
    }

}


## Creating Subnet for Backend App
resource "aws_subnet" "backend-private-subnet-1" {
    vpc_id = "${aws_vpc.tier_vpc.id}"
    cidr_block = "${var.private_subnet_1_cidr}"
    map_public_ip_on_launch = false
    availability_zone = "us-east-1a"

    tags = {
        Name = "Backend Private Subnet A"
    }

}


resource "aws_subnet" "backend-private-subnet-2" {
    vpc_id = "${aws_vpc.tier_vpc.id}"
    cidr_block = "${var.private_subnet_2_cidr}"
    map_public_ip_on_launch = false
    availability_zone = "us-east-1b"

    tags = {
        Name = "Backend Private Subnet B"
    }

}


## Creating Subnets for Database
resource "aws_subnet" "database-private-subnet-1" {
    vpc_id = "${aws_vpc.tier_vpc.id}"
    cidr_block = "${var.private_subnet_3_cidr}"
    availability_zone = "us-east-1a"

    tags = {
        Name = "RDS Private Subnet A"
    }

}


resource "aws_subnet" "database-private-subnet-2" {
    vpc_id = "${aws_vpc.tier_vpc.id}"
    cidr_block = "${var.private_subnet_4_cidr}"
    availability_zone = "us-east-1b"

    tags = {
        Name = "RDS Private Subnet B"
    }

}
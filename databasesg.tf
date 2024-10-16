## Creating Security Group for Frontend
resource "aws_security_group" "database_sg" {
    vpc_id = "${aws_vpc.tier_vpc.id}"


    ## inbound rules
    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["${aws_subnet.backend-private-subnet-1.cidr_block}", "${aws_subnet.backend-private-subnet-2.cidr_block}"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
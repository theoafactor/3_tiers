# Creating VPC
resource "aws_vpc" "tier_vpc" {
    cidr_block = "${var.cidr_block}"
    instance_tenancy = "default"

    tags = {
        Name = "3-Tier VPC"
    }
}
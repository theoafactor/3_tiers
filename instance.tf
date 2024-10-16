resource "aws_instance" "frontend_instance_1" {
    ami = "ami-0866a3c8686eaeeba"
    instance_type = "t2.micro"
    key_name = "test_instance_key"
    vpc_security_group_ids = ["${aws_security_group.frontend_sg.id}"]
    subnet_id = "${aws_subnet.frontend-public-subnet-1.id}"
    associate_public_ip_address = true

    tags = {
        Name = "Frontend instance 1"
    }
}


resource "aws_instance" "frontend_instance_2" {
    ami = "ami-0866a3c8686eaeeba"
    instance_type = "t2.micro"
    key_name = "test_instance_key"
    vpc_security_group_ids = ["${aws_security_group.frontend_sg.id}"]
    subnet_id = "${aws_subnet.frontend-public-subnet-2.id}"
    associate_public_ip_address = true

    tags = {
        Name = "Frontend instance 2"
    }
}
resource "aws_lb" "tier_loadbalancer" {

    name = "App-tier-Load-balancer"
    internal = false
    load_balancer_type = "application"
    security_groups = ["${aws_security_group.frontend_sg.id}"]
    subnets = [aws_subnet.frontend-public-subnet-1.id, aws_subnet.frontend-public-subnet-2.id]

}


resource "aws_lb_target_group" "tier-target-elb" {
    name = "Tier-ALB-Target"
    port = 80
    protocol = "HTTP"
    vpc_id = "${aws_vpc.tier_vpc.id}"
} 


resource "aws_lb_target_group_attachment" "tier_attachment_1" {
    target_group_arn = aws_lb_target_group.tier-target-elb.arn
    target_id = aws_instance.frontend_instance_1.id
    port = 80

    depends_on = [ aws_instance.frontend_instance_1 ]

}

resource "aws_lb_listener" "tier_external_listener" {
    load_balancer_arn = aws_lb.tier_loadbalancer.arn
    port = "80"
    protocol = "HTTP"
    default_action {
      type = "forward"
      target_group_arn = aws_lb_target_group.tier-target-elb.arn
    }
}


resource "aws_lb_target_group_attachment" "tier_attachment_2" {
    target_group_arn = aws_lb_target_group.tier-target-elb.arn
    target_id = aws_instance.frontend_instance_2.id
    port = 80
    depends_on = [ aws_instance.frontend_instance_2 ]

}
output "lb_dns_name" {
    description = "Getting Loadbalancer's information"
    value = "${aws_lb.tier_loadbalancer.dns_name}"
}
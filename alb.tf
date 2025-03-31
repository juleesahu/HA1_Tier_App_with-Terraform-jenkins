resource "aws_lb" "web_alb" {
    name = "web-alb"
    internal = false
    load_balancer_type = "application"
    security_groups = [aws_security_group.ec2_sg.id]
    subnets = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id]
    tags = {
        Name = "WebALB"
}

}
resource "aws_security_group" "ec2_sg" {
    vpc_id = aws_vpc.main_vpc.id

ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]            # Allow SSH access
    }


ingress {
    from_port = 80
    to_port =80 
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]             # Allow HTTP access
}

ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]             # Allow HTTPS access
}

egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}
tags = {
  Name = "EC2SecurityGroup"
}
}


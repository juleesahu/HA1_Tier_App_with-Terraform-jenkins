resource "aws_instance" "web_server_1" {
    ami = "ami-0f9de6e2d2f067fca"
    instance_type = "t2.micro"
    associate_public_ip_address = true   
    subnet_id = aws_subnet.public_subnet_1.id
    vpc_security_group_ids = [aws_security_group.ec2_sg.id]
    key_name = "jenkins_automation"

 user_data = <<-EOF
               #!/bin/bash
               sudo apt update -y
               sudo apt install apache2 -y
               sudo systemctl start apache2
               sudo systemctl enable apache2
               echo "<h1>Welcome to the Web Server 1 $(hostname -f)</h1>" | sudo tee /var/www/html/index.html
               sudo systemctl restart apache2

              EOF
  tags = {
    Name = "WebServer1"
}   
}

resource "aws_instance" "web_server_2" {
    ami = "ami-0f9de6e2d2f067fca"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    subnet_id = aws_subnet.public_subnet_1.id
    vpc_security_group_ids = [aws_security_group.ec2_sg.id]
    key_name = "jenkins_automation"

 user_data = <<-EOF
               #!/bin/bash
               sudo apt update -y
               sudo apt install apache2 -y
               sudo systemctl start apache2
               sudo systemctl enable apache2
               echo "<h1>Welcome to the Web Server 2 $(hostname -f)</h1>" | sudo tee /var/www/html/index.html
               sudo systemctl restart apache2

         EOF
  tags = {
    Name = "WebServer2"
}   
}


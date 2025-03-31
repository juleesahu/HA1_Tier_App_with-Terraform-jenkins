output "web_server_1_public_ip" {
  description = "public ip of web server 1"
  value = aws_instance.web_server_1.public_ip  
}


output "web_server_2_public_ip" {
    description = "public ip of web server 2"
    value = aws_instance.web_server_2.public_ip
  
}

output "dns" {
   description = "The DNS name of the Application Load Balancer (ALB)"
   value = aws_lb.web_alb.dns_name
  
}

output "jenkins_server_public_ip" {
    description = "public ip of jenkins server"
      value =   aws_instance.jenkins_server.public_ip
}
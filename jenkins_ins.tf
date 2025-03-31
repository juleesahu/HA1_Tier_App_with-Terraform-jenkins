resource "aws_instance" "jenkins_server" {
  ami                            = "ami-0f9de6e2d2f067fca" 
  instance_type                  = "t2.micro"
  associate_public_ip_address    = true
  subnet_id                      = aws_subnet.public_subnet_1.id
  availability_zone              = "us-east-1a"
  vpc_security_group_ids         = [aws_security_group.jenkins_sg.id]
  key_name                       = "jenkins_automation"

  tags                           = {
    Name                         = "JenkinsServer"
  }
}

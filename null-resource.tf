resource "null_resource" "name" {
  
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("e:/Terraform/pem.key/jenkins_automation.pem")
    host = aws_instance.jenkins_server.public_ip  # ✅ Corrected attribute

  }

  provisioner "file" {
    source = "./jenkins.sh"
    destination = "/tmp/jenkins.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/jenkins.sh",
      "set -e",                                   # Exit on any error
      "sudo /tmp/jenkins.sh"
      
    ]
  }

 depends_on = [ aws_instance.jenkins_server ]  # ✅ Corrected reference

}


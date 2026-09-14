output "private_key_file" {
  description = "Local path to the shared SSH private key"
  value       = local_sensitive_file.private_key_pem.filename
}

output "instances" {
  description = "Public IPs, private IPs and SSH commands for all instances"
  value = {
    ec2_instance = {
      id          = aws_instance.ec2_instance.id
      public_ip   = aws_instance.ec2_instance.public_ip
      private_ip  = aws_instance.ec2_instance.private_ip
      ssh_command = "ssh -i ${local_sensitive_file.private_key_pem.filename} ec2-user@${aws_instance.ec2_instance.public_ip}"
    }
    second_ec2 = {
      id          = aws_instance.second_ec2.id
      public_ip   = aws_instance.second_ec2.public_ip
      private_ip  = aws_instance.second_ec2.private_ip
      ssh_command = "ssh -i ${local_sensitive_file.private_key_pem.filename} ec2-user@${aws_instance.second_ec2.public_ip}"
    }
    third_ec2 = {
      id          = aws_instance.third_ec2.id
      public_ip   = aws_instance.third_ec2.public_ip
      private_ip  = aws_instance.third_ec2.private_ip
      ssh_command = "ssh -i ${local_sensitive_file.private_key_pem.filename} ec2-user@${aws_instance.third_ec2.public_ip}"
    }
    CI_CD_server_ec2 = {
      id            = aws_instance.CI_CD_server_ec2.id
      public_ip     = aws_instance.CI_CD_server_ec2.public_ip
      private_ip    = aws_instance.CI_CD_server_ec2.private_ip
      ssh_command   = "ssh -i ${local_sensitive_file.private_key_pem.filename} ec2-user@${aws_instance.CI_CD_server_ec2.public_ip}"
      jenkins_url   = "http://${aws_instance.CI_CD_server_ec2.public_ip}:8080"
      sonarqube_url = "http://${aws_instance.CI_CD_server_ec2.public_ip}:9000"
    }
  }
}


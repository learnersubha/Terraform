output "ec2_public_ip" {
    value = aws_instance.microft.public_ip 
}
output "ec2_public_dns" {
    value = aws_instance.microft.public_dns
}
output "ec2_private_ip" {
    value = aws_instance.microft.private_ip
}

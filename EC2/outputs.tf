output "ec2_public_ip"{
    value = aws_instance.demo_instanmce.public_ip
    
}

output "ec2_public_dns"{
    value = aws_instance.demo_instanmce.public_dns
    
}

output "ec2_private_ip"{
    value = aws_instance.demo_instanmce.private_ip
    
}

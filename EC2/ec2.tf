# SSH key 
resource aws_key_pair create_key {
    key_name = "microft-tf-key"
    public_key = file("ec2-key.pub")
}

# VPC & Security Groups
resource aws_default_vpc default {

}

resource aws_security_group microft_security_group {
     name = "tf-security"
     description = "For creating security group"
     vpc_id = aws_default_vpc.default.id

    ## Inbound Rule
    ingress {
       from_port = 22
       to_port = 22
       protocol = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
       description = "For ssh port open" 
    }

    ingress {
       from_port = 80
       to_port = 80
       protocol = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
       description = "for open http port"
    }

    ingress {
       from_port = 5173
       to_port = 5173
       protocol = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
       description = "online-shop"
    }
    ## Outbount rule
    egress {
       from_port = 0
       to_port = 0
       protocol = "-1"
       cidr_blocks = ["0.0.0.0/0"]
       description = "all ports"
    }
}    
 # Create EC2 instance
resource aws_instance microft {
    key_name = aws_key_pair.create_key.key_name
    security_groups = [aws_security_group.microft_security_group.name]
    ami = var.ec2_ami_id
    instance_type = var.ec2_instance_type
    user_data = file("install_nginx.sh")
    
    root_block_device {
        volume_size = var.ec2_root_volume_size
        volume_type = "gp3"
    }
    tags = {
        Name = "microft-tf-learning"
    }     

}

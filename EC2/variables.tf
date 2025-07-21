variable "ec2_ami_id"{
    default = "ami-042b4708b1d05f512"
    type = string
}

variable "ec2_volume" {
    default = 10
    type = number
}

variable "ec2_instance_name" {
    default = "terra_server"
    type = string
  
}

variable "ec2_instance_type" {
    default = "t3.micro"
    type = string
  
}

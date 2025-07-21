variable "bucket_name" {
    description = "This is your bucket name"
    type = string
  
}

variable "env" {
    description = "This is your environment name"
    type = string
}

variable "instance_count" {
    description = "This is the count of your required ec2 instance"
    type = number
  
}

variable "ec2_instance_type" {
    description = "Enter your ec2 instance type as per your requirement"
    type = string  
}

variable "ec2_ami_id" {
    description = "Enter the ami_id as per your requirement"
    type = string
  
}

variable "ec2_volume_size" {
    description = "Enter your ec2 volue as per requirement"
    type = number
  
}

variable "hash_key" {
    description = "Enter the hash_key for your dynamodb table"
    type = string
  
}

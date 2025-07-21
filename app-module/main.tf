module "stg-infra" {
    source = "./app-infra"
    bucket_name = "infra-bucket"
    env = "stg"
    instance_count = 1
    ec2_instance_type = "t2.small"
    ec2_ami_id = "ami-042b4708b1d05f512"
    ec2_volume_size = 10
    hash_key = "employeeId"
  
}

module "dev-infra" {
    source = "./app-infra"
    bucket_name = "infra-bucket"
    env = "dev"
    instance_count = 1
    ec2_instance_type = "t2.micro"
    ec2_ami_id = "ami-042b4708b1d05f512"
    ec2_volume_size = 10
    hash_key = "employeeId"
  
}

module "prod-infra" {
    source = "./app-infra"
    bucket_name = "infra-bucket"
    env = "prod"
    instance_count = 2
    ec2_instance_type = "t2.medium"
    ec2_ami_id = "ami-042b4708b1d05f512"
    ec2_volume_size = 20
    hash_key = "employeeId"
  
}


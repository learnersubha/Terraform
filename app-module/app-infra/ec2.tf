## Create keyPair
resource "aws_key_pair" "demo_key" {
  key_name   = "${var.env}-app-infra-key"
  public_key = file("terra-key.pub")

  tags = {
    Environment = var.env
  }

}

## VPC create
 resource "aws_default_vpc" "demo" {
  
  
}

## security group creation
resource "aws_security_group" "demo_sg" {
  name        = "${var.env}-app-infra-sg"
  vpc_id      = aws_default_vpc.demo.id

  ingress{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress{
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress{
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.env}-app-infra-sg"
  }

}

## Create EC2 instance
resource "aws_instance" "demo_instanmce" {
  count = var.instance_count
  key_name = aws_key_pair.demo_key.key_name
  security_groups = [aws_security_group.demo_sg.name]
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type

  root_block_device {
    volume_size = var.ec2_volume_size
    volume_type = "gp3"
  }

  tags = {
    Name = "${var.env}-app-infra-instance"
    Environment = var.env
  }
}

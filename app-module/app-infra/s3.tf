resource "aws_s3_bucket" "demo_bucket" {
    bucket = "${var.env}-${var.bucket_name}"

    tags = {
        Name = var.bucket_name
        Environment = var.env
    }
  
}

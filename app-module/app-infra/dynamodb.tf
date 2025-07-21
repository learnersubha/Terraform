resource "aws_dynamodb_table" "basic-dynamodb-table" {
     name           = "${var.env}-app-infra-dynamodb"
     billing_mode   = "PAY_PER_REQUEST"
     hash_key       = var.hash_key

    attribute {
      name = var.hash_key
      type = "S"
    }

    tags = {
      name = "${var.env}-app-infra-dynamodb"
      Environment = var.env
    }

}

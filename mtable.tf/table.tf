resource "aws_dynamodb_table" "demo_dynamodb_table" {
  name           = "student"
  billing_mode   ="PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "studentId"

  attribute {
    name = "studentId"
    type = "S"
  }
  tags={
      Name    ="demo dynamodb table"
      Environment="testing"
  }
}
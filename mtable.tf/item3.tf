resource "aws_dynamodb_table_item" "item3" {
    depends_on = [
      aws_dynamodb_table.demo_dynamodb_table
    ]
  table_name = aws_dynamodb_table.demo_dynamodb_table.name
  hash_key   = aws_dynamodb_table.demo_dynamodb_table.hash_key

  item = <<ITEM
{
  "studentId": {"S": "003"},
  "tamil": {"N": "54"},
  "english": {"N": "62"},
  "maths": {"N": "73"},
  "science": {"N": "47"}
  
}
ITEM
}

resource "aws_dynamodb_table_item" "item4" {
    depends_on = [
      aws_dynamodb_table.demo_dynamodb_table
    ]
  table_name = aws_dynamodb_table.demo_dynamodb_table.name
  hash_key   = aws_dynamodb_table.demo_dynamodb_table.hash_key

  item = <<ITEM
{
  "studentId": {"S": "004"},
  "tamil": {"N": "64"},
  "english": {"N": "62"},
  "maths": {"N": "53"},
  "science": {"N": "47"}
  
}
ITEM
}


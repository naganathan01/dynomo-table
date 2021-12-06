resource "aws_dynamodb_table_item" "item2" {
    depends_on = [
      aws_dynamodb_table.demo_dynamodb_table
    ]
  table_name = aws_dynamodb_table.demo_dynamodb_table.name
  hash_key   = aws_dynamodb_table.demo_dynamodb_table.hash_key

  item = <<ITEM
{
  "studentId": {"S": "002"},
  "tamil": {"N": "54"},
  "english": {"N": "92"},
  "maths": {"N": "73"},
  "science": {"N": "87"}
  
}
ITEM
}


resource "aws_ssm_parameter" "parameters" {
  for_each = var.parameters
  # as "dev-expense.rds.username"(key)= "admin1"(value)
  name  = each.key
  type  = "String"
  value = each.value
  key_id = var.key_id # when you store credentails u need a key for security so we are using arn
}

resource "aws_ssm_parameter" "secrets" {
  for_each = var.secrets
  # as "dev-expense.rds.password"(key) = "ExpenseApp123"(value)
  name  = each.key
  type  = "String"
  value = each.value
  key_id = var.key_id # when you store credentails u need a key for security so we are using arn
}
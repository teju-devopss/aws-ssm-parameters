# resource "aws_ssm_parameter" "parameters" {
#   for_each = var.parameters
#   # as "dev-expense.rds.username"(key)= "admin1"(value)
#   name  = each.key
#   type  = "String"
#   value = each.value
#   key_id = var.key_id # when you store credentails u need a key for security so we are using arn
# }
#
# resource "aws_ssm_parameter" "secrets" {
#   for_each = var.secrets
#   # as "dev-expense.rds.password"(key) = "ExpenseApp123"(value)
#   name  = each.key
#   type  = "SecureString"
#   value = each.value
#   key_id = var.key_id # when you store credentails u need a key for security so we are using arn
# }
resource "aws_ssm_parameter" "parameters" {
  for_each = var.parameters
  # Storing general parameters like username, endpoint (non-sensitive)
  name      = each.key
  type      = "String"  # 'String' type for non-sensitive data
  value     = each.value
  key_id    = var.key_id # For encryption, use KMS key if needed for securing the parameter
}

resource "aws_ssm_parameter" "secrets" {
  for_each = var.secrets
  # Storing sensitive information like passwords (SecureString type)
  name      = each.key
  type      = "SecureString"  # 'SecureString' type for sensitive data (e.g., passwords)
  value     = each.value
  key_id    = var.key_id # Use KMS encryption key for SecureString
}

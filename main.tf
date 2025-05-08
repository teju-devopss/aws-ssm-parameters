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
provider "aws" {
  region = "us-east-1"
}

# Create SSM Parameters for non-sensitive values (like username and endpoint)
resource "aws_ssm_parameter" "parameters" {
  for_each = var.parameters

  name  = each.key
  type  = "String"
  value = each.value
}

# Create SSM Parameters for sensitive values (like password), using SecureString and KMS key
resource "aws_ssm_parameter" "secrets" {
  for_each = var.secrets

  name   = each.key
  type   = "SecureString"
  value  = each.value
  key_id = var.key_id
}


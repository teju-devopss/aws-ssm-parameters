variable "parameters" {
  default = {
    "dev-expense.rds.username" = "admin1"
    # "dev-expense.rds.endpoint" = ""

  }
}
## in organisations we wont keep passwords in git as in training for learning purpose we are keeping here
variable "secrets" {
  default = {
    "dev-expense.rds.password" = "ExpenseApp123"
  }
}
variable "key_id" {
  default = "arn:aws:kms:us-east-1:522814736516:key/94568fc4-e087-46db-8d88-a6e69ed61d8e"
}
# variable "parameters" {
#   default = {
#     "dev-expense.rds.username" = "admin1"
#      "dev-expense.rds.endpoint" = "dev-expense-rds.cqxq6884ocuz.us-east-1.rds.amazonaws.com"
#
#   }
# }
# ## in organisations we wont keep passwords in git as in training for learning purpose we are keeping here
# variable "secrets" {
#   default = {
#     "dev-expense.rds.password" = "ExpenseApp123"
#   }
# }
# variable "key_id" {
#   default = "arn:aws:kms:us-east-1:522814736516:key/94568fc4-e087-46db-8d88-a6e69ed61d8e"
# }
variable "key_id" {
  default = "arn:aws:kms:us-east-1:522814736516:key/94568fc4-e087-46db-8d88-a6e69ed61d8e"
}


variable "parameters" {
  default = {
    "dev.expense.rds.username" = "admin1"
    "dev.expense.rds.endpoint" = "dev-expense-rds.cqxq6884ocuz.us-east-1.rds.amazonaws.com"
    "dev.expense.frontend.backend.endpoint"  = "https://backend-dev.tejudevops.online/"
  }
}




variable "secrets" {
  default = {
    "dev.expense.rds.password" = "ExpenseApp123"
    "ssh.username" = "centos"
    "ssh.password" = "DevOps321"
    "ses.username" = "AKIAXTORPZCCIK7RSGW5"
    "ses.password" = "BDs3Uh+41aIa9W474iZmmExB9fBlIk/yZq8sv1UX2RHY"

  }
}




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
    "dev.expense.frontend.backend_endpoint"  = "https://backend-dev.tejudevops.online/"
    "newrelic.account" = "6828358"
  }
}




variable "secrets" {
  default = {
    "dev.expense.rds.password" = "ExpenseApp123"
    "ssh.username" = "centos"
    "ssh.password" = "DevOps321"
    "ses.username" = "AKIAXTORPZCCIK7RSGW5" #The Access Key ID for an IAM user with permissions to send email via SES.
    "ses.password" = "BDs3Uh+41aIa9W474iZmmExB9fBlIk/yZq8sv1UX2RHY" #The Secret Access Key for that IAM user.
    "grafana_api_key" =  "glsa_NMbqoj8yruG3fLORELFIn3gv4mtEcbXP_548e04df"
    "dev.expense.frontend.newrelic.key" = "NRAK-L6VFVUP37CYI82XN1L6UX34UBY0"
    "dev.expense.backend.newrelic.key" = "8a53f9047d104617f4a60b993d87429bFFFFNRAL"
    "elasticsearch.password"           = "VxrrE1BIHbec-H_838jx"
  }
}


#jjn

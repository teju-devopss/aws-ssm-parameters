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

    # "prod.expense.rds.username"              = "admin1"
    # "prod.expense.rds.endpoint"              = "prod-expense-rds.cbvsbeoyxek4.us-east-1.rds.amazonaws.com"
    # "prod.expense.frontend.backend_endpoint" = "https://backend-prod.rdevopsb73.online/"
    # "prod.expense.frontend.app_version"      = "1.0.1"
    # "prod.expense.backend.app_version"       = "1.0.1"

    # RoboShop Project
    "dev.roboshop.docdb.endpoint"           = "dev-roboshop-docdb-1.cqxq6884ocuz.us-east-1.docdb.amazonaws.com"
    "dev.roboshop.catalogue.MONGO_URL"     = "mongodb://admin1:RoboShop12345@dev-roboshop-docdb-1.cqxq6884ocuz.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false"
    "dev.roboshop.user.MONGO_URL"         = "mongodb://admin1:RoboShop12345@dev-roboshop-docdb-1.cqxq6884ocuz.us-east-1.docdb.amazonaws.com:27017/user?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false"
     "dev.roboshop.user.REDIS_HOST"        = "dev-roboshop-elasticache.y7pp7r.0001.use1.cache.amazonaws.com"
     "dev.roboshop.cart.REDIS_HOST"        = "dev-roboshop-elasticache.y7pp7r.0001.use1.cache.amazonaws.com"
     "dev.roboshop.cart.CATALOGUE_HOST"    = "catalogue"
     "dev.roboshop.cart.CATALOGUE_PORT"    = "80"
     "dev.roboshop.shipping.CART_ENDPOINT" = "cart"
     "dev.roboshop.shipping.DB_HOST"       = "dev-mysql-rds.cqxq6884ocuz.us-east-1.rds.amazonaws.com"
    "dev.roboshop.rds.endpoint"           = "dev-mysql-rds.cqxq6884ocuz.us-east-1.rds.amazonaws.com"
    #
    # "dev.roboshop.payment.CART_HOST" = "cart"
    # "dev.roboshop.payment.CART_PORT" = "80"
    # "dev.roboshop.payment.USER_HOST" = "user"
    # "dev.roboshop.payment.USER_PORT" = "80"
    # "dev.roboshop.payment.AMQP_HOST" = "rabbitmq-dev.rdevopsb73.online"
    # "dev.roboshop.payment.AMQP_USER" = "roboshop"
    # "dev.roboshop.payment.AMQP_PASS" = "roboshop123"
    #
    #
    # "prod.roboshop.docdb.endpoint"         = "prod-roboshop-docdb.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com"
    # "prod.roboshop.catalogue.MONGO_URL"    = "mongodb://admin1:RoboShop12345@prod-roboshop-docdb.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false"
    # "prod.roboshop.user.MONGO_URL"         = "mongodb://admin1:RoboShop12345@prod-roboshop-docdb.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false"
    # "prod.roboshop.user.REDIS_HOST"        = "prod-roboshop-elasticache.nud0cy.0001.use1.cache.amazonaws.com"
    # "prod.roboshop.cart.REDIS_HOST"        = "prod-roboshop-elasticache.nud0cy.0001.use1.cache.amazonaws.com"
    # "prod.roboshop.cart.CATALOGUE_HOST"    = "catalogue"
    # "prod.roboshop.cart.CATALOGUE_PORT"    = "80"
    # "prod.roboshop.shipping.CART_ENDPOINT" = "cart"
    # "prod.roboshop.shipping.DB_HOST"       = "prod-mysql-rds.cbvsbeoyxek4.us-east-1.rds.amazonaws.com"
    # "prod.roboshop.rds.endpoint"           = "prod-mysql-rds.cbvsbeoyxek4.us-east-1.rds.amazonaws.com"
    #
    # "prod.roboshop.payment.CART_HOST" = "cart"
    # "prod.roboshop.payment.CART_PORT" = "80"
    # "prod.roboshop.payment.USER_HOST" = "user"
    # "prod.roboshop.payment.USER_PORT" = "80"
    # "prod.roboshop.payment.AMQP_HOST" = "rabbitmq-prod.rdevopsb73.online"
    # "prod.roboshop.payment.AMQP_USER" = "roboshop"
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


    ## RoboShop Project
    "dev.roboshop.rds.username"      = "admin1"
    "dev.roboshop.rds.password"      = "RoboShop12345"
    "dev.roboshop.docdb.username"    = "admin1"
    "dev.roboshop.docdb.password"    = "RoboShop12345"
    "dev.roboshop.rabbitmq.username" = "roboshop"
    "dev.roboshop.rabbitmq.password" = "roboshop123"

    # "prod.roboshop.rds.username"      = "admin1"
    # "prod.roboshop.rds.password"      = "RoboShop12345"
    # "prod.roboshop.docdb.username"    = "admin1"
    # "prod.roboshop.docdb.password"    = "RoboShop12345"
    # "prod.roboshop.rabbitmq.username" = "roboshop"
    # "prod.roboshop.rabbitmq.password" = "roboshop123"

  }
}



#jjn

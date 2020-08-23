variable "aws_access_key" {
  type = string
  description = "AWS access key"
}
variable "aws_secret_key" {
  type = string
  description = "AWS secret key"
}
provider "aws" {
  region     = "us-east-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_elastic_beanstalk_application" "app-newschool-api-dev" {
  id     = "newschool-api-dev"
  name   = "newschool-api-dev"
  # description = "New School Backend - branch develop"
}

resource "aws_elastic_beanstalk_environment" "env-newschool-api-dev" {
  name                = "newschool-api-dev2"
  application         = aws_elastic_beanstalk_application.app-newschool-api-dev.name
}
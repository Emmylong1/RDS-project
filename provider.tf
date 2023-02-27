provider "aws" {
  region     = "us-east-1"
  access_key = "ACCESS_KEY"
  secret_key = "SECRET_KEY"
}

variable "subnet_prefix" {
  description = "cidr block for the subnet"

}

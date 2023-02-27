provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWGFHVGZ3HX5GCBKI"
  secret_key = "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"
}

variable "subnet_prefix" {
  description = "cidr block for the subnet"

}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

output "hello" {
  value = "Hello, Terraform!"
}

output "message" {
  value = "This is a sample Terraform configuration."
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucket-name-{random_integer.this.result}"
    tags = {
      Name        = "My bucket"
      Environment = "Dev"
    }

}

resource "random_integer" "this" {
    min = 373959309
    max = 999999999
}
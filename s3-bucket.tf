resource "aws_s3_bucket" "production" {
  bucket = "emmy-tf-test-bucket"
   acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "project1 bucket"
    Environment = "production"
  }
}









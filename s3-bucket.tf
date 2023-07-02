resource "aws_s3_bucket" "production" {
  bucket = "devops-bucket-learning"
   acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "project1 bucket"
    Environment = "production"
  }
}









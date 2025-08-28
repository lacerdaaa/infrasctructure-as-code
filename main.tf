resource "aws_s3_bucket" "s3_bucket" {
  bucket = "rocketseat-bucket-iac-${terraform.workspace}"

  tags = {
    Name = "Teste S3 Bucket"
    Iac = true
    Context = "${terraform.workspace}"
  }
}


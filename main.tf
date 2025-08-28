resource "aws_s3_bucket" "s3_bucket" {
  bucket = "pressum-project-${terraform.workspace}"

  tags = {
    Name    = "Teste S3 Bucket"
    Iac     = "true"
    Context = terraform.workspace
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "rocketseat-bucket-iac-${random_id.suffix.hex}"

  tags = {
    Name = "Bucket Rocketseat IAC"
    Iac = true
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket        = "wp-config-dellabeneta-test"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "s3_bucket_acl" {
  bucket = aws_s3_bucket.s3_bucket.id
  acl    = "private"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.s3_bucket.id
  key    = "wp-config.php"
  acl    = "public-read"
  source = "wp-config.php"
  etag   = filemd5("wp-config.php")
}
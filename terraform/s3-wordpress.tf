# Define an S3 bucket for storing WordPress files
resource "aws_s3_bucket" "wordpress_bucket" {
  bucket = "my-s3-wiadro-wordpress-420"

  tags = {
    Name        = "WordPressContentBucket"
    Environment = "Production"
  }
}

resource "aws_s3_bucket_acl" "wordpress_bucket_acl" {
  bucket = aws_s3_bucket.wordpress_bucket.id
  acl    = "private"
}

# Enable versioning for the bucket
# resource "aws_s3_bucket_versioning" "versioning" {
#   bucket = aws_s3_bucket.wordpress_bucket.id

#   versioning_configuration {
#     status = "Enabled"
#   }
# }

# Define an S3 bucket policy to allow specific actions
resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.wordpress_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Principal = "*",
        Action = [
          "s3:GetObject",
          "s3:PutObject"
        ],
        Resource = "${aws_s3_bucket.wordpress_bucket.arn}/*"
      }
    ]
  })
}

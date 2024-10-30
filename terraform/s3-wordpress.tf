# Define an S3 bucket for storing WordPress files
resource "aws_s3_bucket" "wordpress_bucket" {
  bucket = "my-s3-wiadro-wordpress-420-mm" 

  tags = {
    Name        = "WordPressContentBucket"
  }
}

# commented for now
# resource "aws_s3_bucket_acl" "wordpress_bucket_acl" {
#   bucket = aws_s3_bucket.wordpress_bucket.id
#   acl = "private"
# }

# Enable versioning for the bucket
# resource "aws_s3_bucket_versioning" "versioning" {
#   bucket = aws_s3_bucket.wordpress_bucket.id

#   versioning_configuration {
#     status = "Enabled"
#   }
# }

# Comennted for now
# resource "aws_s3_bucket_public_access_block" "example" {
#   bucket = aws_s3_bucket.example.id

#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }

# Define an S3 bucket policy to allow specific actions
# Commented for now
# resource "aws_s3_bucket_policy" "bucket_policy" {
#   bucket = aws_s3_bucket.wordpress_bucket.id

#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Effect = "Allow",
#         Principal = "*",
#         Action   = [
#           "s3:GetObject",
#           "s3:PutObject"
#         ],
#         Resource = "${aws_s3_bucket.wordpress_bucket.arn}/*"
#       }
#     ]
#   })
# }

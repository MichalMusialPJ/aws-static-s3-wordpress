resource "aws_ecr_repository" "my_ecr_repo" {
  name                 = "ecr-wordpress-420-mm"  
  image_tag_mutability = "IMMUTABLE"          
  image_scanning_configuration {
    scan_on_push = false  
  }

  tags = {
    Name = "MyWebAppECR"
  }
}
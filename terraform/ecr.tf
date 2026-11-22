resource "aws_ecr_repository" "cruise_app" {
  name                 = "cruise-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
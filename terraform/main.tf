provider "aws" {
  region = var.aws_region
}

resource "aws_lambda_function" "cruise_app" {
  function_name = "cruise_app"
  role          = aws_iam_role.lambda_exec.arn
  package_type  = "Image"
  image_uri     = "${aws_ecr_repository.cruise_app.repository_url}:${var.image_tag}"
  timeout       = 30
}


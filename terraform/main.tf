provider "aws" {
  region = "us-west-2"
}

data "aws_iam_policy_document" "container_workload_assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type = "Service"
      identifiers = [
        "ecs-tasks.amazonaws.com", # For ECS Fargate / EC2 tasks
        "lambda.amazonaws.com"     # For Lambda functions
      ]
    }
  }
}

resource "aws_iam_role" "workload_ecr_role" {
  name               = "workload-ecr-access-role"
  assume_role_policy = data.aws_iam_policy_document.container_workload_assume_role.json
}


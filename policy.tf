data "aws_iam_policy_document" "repo_policy" {
  statement {
    sid = "AcctPull"

    actions = [
      "ecr:BatchCheckLayerAvailability",
      "ecr:BatchGetImage",
      "ecr:DescribeImages",
      "ecr:DescribeRepositories",
      "ecr:GetAuthorizationToken",
      "ecr:GetDownloadUrlForLayer",
      "ecr:GetRepositoryPolicy",
      "ecr:ListImages",
    ]

    principals {
      type        = "AWS"
      identifiers = var.principals_pull_access
    }

    effect = "Allow"
  }
}

resource "aws_ecr_lifecycle_policy" "repo_lifecycle" {
  repository = aws_ecr_repository.repo.name

  policy = <<EOF
{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Expire ${var.life_cycle_policy_tagstatus} images older than ${var.life_cycle_policy_days} days",
            "selection": {
                "tagStatus": "${var.life_cycle_policy_tagstatus}",
                "countType": "sinceImagePushed",
                "countUnit": "days",
                "countNumber": ${var.life_cycle_policy_days}
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
EOF
}

resource "aws_ecr_repository_policy" "policy" {
  count      = var.external_accounts_policy ? 1 : 0
  repository = aws_ecr_repository.repo.name
  policy     = data.aws_iam_policy_document.repo_policy.json

}

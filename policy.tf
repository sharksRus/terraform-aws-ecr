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

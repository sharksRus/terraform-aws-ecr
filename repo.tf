resource "aws_ecr_repository" "repo" {
  name = var.repo_name
  encryption_configuration {
    count           = var.enable_kms ? 1 : 0
    encryption_type = var.encryption_type
    kms_key         = var.kms_key_arn
  }
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
  image_tag_mutability = "MUTABLE"
  tags                 = merge(local.defaultTags, tomap({ "Name" = "${var.repo_name}" }))
}

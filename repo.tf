resource "aws_ecr_repository" "repo" {
  name = var.repo_name
  encryption_configuration { #tfsec:ignore:AWS093
    count           = var.enable_kms ? 1 : 0
    encryption_type = var.encryption_type
    kms_key         = var.kms_key_arn
  }
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
  image_tag_mutability = "MUTABLE" #tfsec:ignore:AWS078
  tags                 = var.tags
}

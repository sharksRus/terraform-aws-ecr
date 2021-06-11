resource "aws_ecr_repository" "repo" {
  name = var.repo_name
  dynamic "encryption_configuration" {
    for_each = var.encryption_configuration == null ? [] : [var.encryption_configuration]
    content {
      encryption_type = encryption_configuration.value.encryption_type
      kms_key         = encryption_configuration.value.kms_key
    }
  }
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
  image_tag_mutability = "MUTABLE" #tfsec:ignore:AWS078
  tags = var.tags
}

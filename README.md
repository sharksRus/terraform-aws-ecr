# terraform-aws-ecr
[![CI Actions Status](https://github.com/vglen/terraform-aws-ecr/workflows/CI/badge.svg)](https://github.com/novu/novu-tf-lower-attis/actions)

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| repo\_name | Name of your ECR Repo | `any` | n/a | yes |
| scan\_on\_push | Enable vulnerability scanning on ECR repo | `bool` | `true` | no |

## Outputs

No output.
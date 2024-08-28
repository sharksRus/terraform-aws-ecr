<!-- BEGIN_TF_DOCS -->
# terraform-aws-ecr
<!-- markdown-lint-disable no-inline-html -->
[![CI](https://github.com/sharksrus/terraform-aws-ecr/actions/workflows/ci.yaml/badge.svg)](https://github.com/sharksrus/terraform-aws-ecr/actions/workflows/ci.yaml)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.64.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.64.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_lifecycle_policy.repo_lifecycle](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy) | resource |
| [aws_ecr_repository.repo](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_ecr_repository_policy.policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository_policy) | resource |
| [aws_iam_policy_document.repo_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_organizations_organization.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app"></a> [app](#input\_app) | Application | `string` | `"ecr"` | no |
| <a name="input_buildmethod"></a> [buildmethod](#input\_buildmethod) | IaC used | `string` | `"terraform"` | no |
| <a name="input_encryption_configuration"></a> [encryption\_configuration](#input\_encryption\_configuration) | ECR encryption configuration | <pre>object({<br>    encryption_type = string<br>    kms_key         = any<br>  })</pre> | `null` | no |
| <a name="input_encryption_type"></a> [encryption\_type](#input\_encryption\_type) | Type of encryption for the repository | `string` | `"AES256"` | no |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | `""` | no |
| <a name="input_external_accounts_policy"></a> [external\_accounts\_policy](#input\_external\_accounts\_policy) | Set to true and added accounts to principals\_pull\_access | `bool` | `false` | no |
| <a name="input_force_delete"></a> [force\_delete](#input\_force\_delete) | will delete the repository even if it contains images, set to false to disable | `bool` | `true` | no |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | The arn of the kms key is not using default of AES256 | `string` | `null` | no |
| <a name="input_life_cycle_policy_days"></a> [life\_cycle\_policy\_days](#input\_life\_cycle\_policy\_days) | The humber of days to hold untagged images | `number` | `90` | no |
| <a name="input_life_cycle_policy_tagstatus"></a> [life\_cycle\_policy\_tagstatus](#input\_life\_cycle\_policy\_tagstatus) | The status of the image tag | `string` | `"untagged"` | no |
| <a name="input_org"></a> [org](#input\_org) | Namme used for the tag keys | `string` | `"my_org"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | Repository Owner | `string` | `""` | no |
| <a name="input_principals_pull_access"></a> [principals\_pull\_access](#input\_principals\_pull\_access) | Principal ARNs to provide with pull access to the ECR | `list(string)` | `[]` | no |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | Name of your ECR Repo | `string` | n/a | yes |
| <a name="input_scan_on_push"></a> [scan\_on\_push](#input\_scan\_on\_push) | Enable vulnerability scanning on ECR repo | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `any` | `[]` | no |
| <a name="input_technicalcontact"></a> [technicalcontact](#input\_technicalcontact) | Repository Technical Contact Email | `string` | `"me@example.com"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repo"></a> [repo](#output\_repo) | n/a |

<!-- markdown-lint-disable MD041 -->

## Info

Module to generate ECR repos with ORG based pull perms

Update the readme via:

```sh
terraform-docs .
```
<!-- END_TF_DOCS -->
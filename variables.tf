variable "app" {
  description = "Application"
  default     = "ecr"
}
variable "buildmethod" {
  description = "IaC used"
  default     = "terraform"
}
variable "encryption_configuration" {
  type = object({
    encryption_type = string
    kms_key         = any
  })
  description = "ECR encryption configuration"
  default     = null
}
variable "env" {
  default = ""
}
variable "encryption_type" {
  description = "Type of encryption for the repository"
  default     = "AES256"
}
variable "external_accounts_policy" {
  type        = bool
  description = "Set to true and added accounts to principals_pull_access"
  default     = false
}
variable "force_delete" {
  type         = bool
  default      = true
  desscription = "will delete the repository even if it contains images, set to false to disable"
}
variable "kms_key_arn" {
  description = "The arn of the kms key is not using default of AES256"
  default     = ""
}
variable "life_cycle_policy_days" {
  description = "The humber of days to hold untagged images"
  default     = 90
}
variable "life_cycle_policy_tagstatus" {
  description = "The status of the image tag"
  default     = "untagged"
}
variable "org" {
  description = "Namme used for the tag keys"
  default     = "my_org"
}
variable "owner" {
  description = "Repository Owner"
  default     = ""
}
variable "principals_pull_access" {
  type        = list(string)
  description = "Principal ARNs to provide with pull access to the ECR"
  default     = []
}
variable "repo_name" {
  description = "Name of your ECR Repo"
}
variable "scan_on_push" {
  description = "Enable vulnerability scanning on ECR repo"
  default     = true
}
variable "tags" {
  type    = any
  default = []
}
variable "technicalcontact" {
  description = "Repository Technical Contact Email"
  default     = "me@example.com"
}

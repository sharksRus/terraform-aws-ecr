variable "enable_kms" {
  type        = bool
  description = "True for KMS, false for AES256"
  default     = false
}
variable "encryption_type" {
  description = "Type of encryption for the repository"
  default     = "AES256"
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

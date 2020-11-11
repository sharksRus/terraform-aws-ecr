variable "life_cycle_policy_days" {
  description = "The humber of days to hold untagged images"
  default     = 90
}

variable "life_cycle_policy_tagstatus" {
  description = "The status of the image tag"
  default     = "untagged"
}
variable "repo_name" {
  description = "Name of your ECR Repo"
}
variable "scan_on_push" {
  description = "Enable vulnerability scanning on ECR repo"
  default     = true
}

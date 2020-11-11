variable "repo_name" {
    description = "Name of your ECR Repo"
}
variable "scan_on_push" {
    description = "Enable vulnerability scanning on ECR repo"
    default = true
}

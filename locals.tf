locals {
  defaultTags = {
    "${var.org}:app"         = var.app
    "${var.org}:buildmethod" = var.buildmethod
    "${var.org}:contact"     = var.technicalcontact
    "${var.org}:env"         = var.env
    "${var.org}:owner"       = var.owner
  }
}
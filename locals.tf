locals {
  default_tags = var.default_tags_enabled ? {
    ApplicationName = var.ApplicationName

  } : {}
}
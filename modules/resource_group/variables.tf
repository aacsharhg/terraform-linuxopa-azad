variable "resource_group_name" {
  description = "The Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "The Azure Region where the Resource Group should exist"
  type        = string
}

variable "default_tags_enabled" {
  description = "Option to enable or disable default tags."
  type        = bool
  default     = true
}

variable "extra_tags" {
  description = "Extra tags to add."
  type        = map(string)
  default     = {}
}



variable "tags" {}
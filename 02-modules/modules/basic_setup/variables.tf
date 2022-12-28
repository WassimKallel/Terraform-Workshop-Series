variable "environment" {
  type        = string
  description = "Environment name"

  validation {
    condition     = contains(["prod", "dev"], var.environment)
    error_message = "Valid values for environment are 'prod' or 'dev'"
  }
}

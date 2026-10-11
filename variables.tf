variable "r2_bucket_locks" {
  description = <<EOT
Map of r2_bucket_locks, attributes below
Required:
    - account_id
    - bucket_name
Optional:
    - jurisdiction
    - rules
EOT

  type = map(object({
    account_id   = string
    bucket_name  = string
    jurisdiction = optional(string)
    rules = optional(list(object({
      condition = object({
        date            = optional(string)
        max_age_seconds = optional(number)
        type            = string
      })
      enabled = bool
      id      = string
      prefix  = optional(string)
    })))
  }))
}


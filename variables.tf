variable "captchas" {
  description = <<EOT
Map of captchas, attributes below
Optional:
    - name
    - secret_key
    - site_key
    - type
EOT

  type = map(object({
    name       = optional(string)
    secret_key = optional(string)
    site_key   = optional(string)
    type       = optional(string)
  }))
}


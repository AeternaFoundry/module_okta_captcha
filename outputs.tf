output "captchas_id" {
  description = "Map of id values across all captchas, keyed the same as var.captchas except keys with no id are omitted"
  value       = { for k, v in okta_captcha.captchas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "captchas_name" {
  description = "Map of name values across all captchas, keyed the same as var.captchas except keys with no name are omitted"
  value       = { for k, v in okta_captcha.captchas : k => v.name if v.name != null && length(v.name) > 0 }
}
output "captchas_secret_key" {
  description = "Map of secret_key values across all captchas, keyed the same as var.captchas except keys with no secret_key are omitted"
  value       = { for k, v in okta_captcha.captchas : k => v.secret_key if v.secret_key != null && length(v.secret_key) > 0 }
  sensitive   = true
}
output "captchas_site_key" {
  description = "Map of site_key values across all captchas, keyed the same as var.captchas except keys with no site_key are omitted"
  value       = { for k, v in okta_captcha.captchas : k => v.site_key if v.site_key != null && length(v.site_key) > 0 }
}
output "captchas_type" {
  description = "Map of type values across all captchas, keyed the same as var.captchas except keys with no type are omitted"
  value       = { for k, v in okta_captcha.captchas : k => v.type if v.type != null && length(v.type) > 0 }
}


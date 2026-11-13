output "captchas_id" {
  description = "Map of id values across all captchas, keyed the same as var.captchas"
  value       = { for k, v in okta_captcha.captchas : k => v.id }
}
output "captchas_name" {
  description = "Map of name values across all captchas, keyed the same as var.captchas"
  value       = { for k, v in okta_captcha.captchas : k => v.name }
}
output "captchas_secret_key" {
  description = "Map of secret_key values across all captchas, keyed the same as var.captchas"
  value       = { for k, v in okta_captcha.captchas : k => v.secret_key }
  sensitive   = true
}
output "captchas_site_key" {
  description = "Map of site_key values across all captchas, keyed the same as var.captchas"
  value       = { for k, v in okta_captcha.captchas : k => v.site_key }
}
output "captchas_type" {
  description = "Map of type values across all captchas, keyed the same as var.captchas"
  value       = { for k, v in okta_captcha.captchas : k => v.type }
}


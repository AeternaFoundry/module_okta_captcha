resource "okta_captcha" "captchas" {
  for_each = var.captchas

  name       = each.value.name
  secret_key = each.value.secret_key
  site_key   = each.value.site_key
  type       = each.value.type
}


resource "cloudflare_r2_bucket_lock" "r2_bucket_locks" {
  for_each = var.r2_bucket_locks

  account_id   = each.value.account_id
  bucket_name  = each.value.bucket_name
  jurisdiction = each.value.jurisdiction
  rules        = each.value.rules
}


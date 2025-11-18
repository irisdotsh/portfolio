resource "vultr_instance" "portfolio_instance" {
  plan                = "vc2-1c-2gb"
  region              = "ord"
  os_id               = 1743
  label               = "Managed by OpenTofu"
  tags                = ["portfolio"]
  hostname            = "irisblankenship.me"
  enable_ipv6         = true
  disable_public_ipv4 = true
  backups             = "enabled"
  backups_schedule {
    type = "daily"
  }
  ddos_protection  = true
  activation_email = false
}
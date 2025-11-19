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
  ddos_protection   = true
  activation_email  = false
  ssh_key_ids       = [vultr_ssh_key.portfolio_key.id]
  vpc_ids           = [vultr_vpc.portfolio_vpc.id]
  firewall_group_id = vultr_firewall_group.portfolio_firewallgroup.id
}
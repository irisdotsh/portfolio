resource "vultr_firewall_group" "portfolio_firewallgroup" {
  description = "Portfolio Website Firewall"
}

resource "vultr_firewall_rule" "ping_firewallrule" {
  firewall_group_id = vultr_firewall_group.portfolio_firewallgroup.id
  protocol          = "icmp"
  ip_type           = "v4"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = 80
  notes             = "HTTP v4"
}

resource "vultr_firewall_rule" "ssh_firewallrule" {
  firewall_group_id = vultr_firewall_group.portfolio_firewallgroup.id
  protocol          = "tcp"
  ip_type           = "v4"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = 22
  notes             = "SSH"
}

resource "vultr_firewall_rule" "http_firewallrule" {
  firewall_group_id = vultr_firewall_group.portfolio_firewallgroup.id
  protocol          = "tcp"
  ip_type           = "v4"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = 80
  notes             = "HTTP"
}

resource "vultr_firewall_rule" "https_firewallrule" {
  firewall_group_id = vultr_firewall_group.portfolio_firewallgroup.id
  protocol          = "tcp"
  ip_type           = "v4"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = 443
  notes             = "HTTPS"
}
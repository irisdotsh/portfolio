resource "vultr_ssh_key" "portfolio_key" {
  name    = "Portfolio SSH Key"
  ssh_key = var.public_key
}
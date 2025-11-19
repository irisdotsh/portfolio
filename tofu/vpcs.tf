resource "vultr_vpc" "portfolio_vpc" {
  description    = "Portfolio Website VPC"
  region         = "ORD"
  v4_subnet      = "10.11.12.0"
  v4_subnet_mask = 24
}
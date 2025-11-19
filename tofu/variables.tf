variable "public_key" {
  type        = string
  description = "SSH Public Key used to SSH into the Vultr instance"
  sensitive   = true
}
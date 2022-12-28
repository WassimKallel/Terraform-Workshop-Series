output "public_ip" {
  value = azurerm_public_ip.my_public_ip.ip_address
}

output "private_key" {
  value     = tls_private_key.new_key.private_key_openssh
  sensitive = true
}

# Get Public IP Address Output
output "web_linuxvm_public_ip" {
  description = "Web Linux VM Public IP Address"
  value       = azurerm_public_ip.web_linuxvm_publicip.ip_address
}

#Network Interface Outputs
## Network Interface ID
output "web_linuxvm_network_interface_id" {
  description = "Web Linux VM NIC"
  value       = azurerm_network_interface.web_linuxvm_nic.id
}

## Network Interface Private IP Address
output "web_linuxvm_nic_private_ip" {
  description = "Web Linux VM NIC Private IP Address"
  value       = [azurerm_network_interface.web_linuxvm_nic.private_ip_addresses]
}

# Linux VM Outputs
## Virtual Machine Public IP
output "web_linuxvm_public_ip_address" {
  description = "Public IP of Web Linux VM"
  value       = azurerm_linux_virtual_machine.web_linuxvm.public_ip_address
}

## Virtual Machine Private IP
output "web_linuxvm_private_ip" {
  description = "Private IP of Private Linux VM"
  value       = azurerm_linux_virtual_machine.web_linuxvm.private_ip_address
}

## Virtual Machine 128-bit ID
output "web_linuxvm_128bit_id" {
  description = "Web Linux VM_ID - 128-bit identifier"
  value       = azurerm_linux_virtual_machine.web_linuxvm.virtual_machine_id
}

output "web_linuxvm_id" {
  description = "Web Linux VM ID"
  value       = azurerm_linux_virtual_machine.web_linuxvm.id
}


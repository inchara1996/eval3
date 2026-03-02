
output "vm1-pri" {
  description = "defining the virtual machine 1 private ip"
  value       = azurerm_linux_virtual_machine.vm1.private_ip_address
}

output "vm2-pri" {
  description = "defining the virtual machine 2 private ip"
  value       = azurerm_linux_virtual_machine.vm2.private_ip_address
}

output "vm2-pub" {
  description = "defining the virtual machine 2 public ip"
  value       = azurerm_linux_virtual_machine.vm2.public_ip_address
}
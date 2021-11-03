# Create Azure Linux VM using Terraform as IaC

## Resources Created 
1. azurerm_public_ip
2. azurerm_network_interface
3. azurerm_network_security_group
4. azurerm_network_interface_security_group_association
5. Terraform Local Block for Security Rule Ports
6. azurerm_network_security_rule
7. Terraform Local Block for defining custom data to Azure Linux Virtual Machine
8. azurerm_linux_virtual_machine
9. Terraform Outputs for above listed Azured Resources 

### Resources will be created from 02-Virtual_Network as well
### Pre-requisite : Create SSH Keys for Azure Linux VM
```t
# Create Folder
mkdir ssh-keys

# Create SSH Key
cd ssh-ekys
ssh-keygen \
    -C "azureuser@myserver" \
    -f terraform-azure.pem 


Public Key: terraform-azure.pem.pub -> move to terraform-azure.pub
Private Key: terraform-azure.pem

# Permissions for Pem file
chmod 400 terraform-azure.pem

# To check the log of the webserver
cd /var/log
tail -100f cloud-init-output.log
```
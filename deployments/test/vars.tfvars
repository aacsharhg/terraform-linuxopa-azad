resource_group_name = "test_opa_agent"
location            = "eastus2"



virtual_machine_name             = "ubuntuserver"
linux_distribution_name          = "ubuntu1804"
instances_count                  = 1
os_flavor                        = "Linux"
virtual_machine_size             = "Standard_B2s"
enable_proximity_placement_group = false
enable_vm_availability_set       = false
enable_public_ip_address         = false
admin_username                   = "oavmadmin"
admin_password                   = "HDDZLUpG7jP$)fA*)f<"
disable_password_authentication  = false
address_space                    = ["10.0.0.0/16"]
address_prefixes                 = ["10.0.1.0/24"]
dns_servers                      = ["10.0.0.4", "10.0.0.5"]
vnet_name                        = "vnet-example"
subnet_name                      = "subnet_example"


###Tagging
ApplicationName = "test-opa-server"

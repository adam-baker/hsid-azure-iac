module "vnet" {
    source  = "Azure/vnet/azurerm"
    version = "1.2.0"
    vnet_name = "${var.env}-hsid-management-vnet"
    address_space = "10.0.0.0/16"
    location = "${var.availability_zone}"
    resource_group_name = "${var.resource_group_name}"
    subnet_names = [ "guardian" ]
    subnet_prefixes = [ "10.0.0.0/24" ]
    nsg_ids = [ "guardian": "${azurerm.network_security_group.guardian_nsg.id}" ]
}

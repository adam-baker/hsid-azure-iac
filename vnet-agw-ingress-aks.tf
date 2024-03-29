module "appgw-ingress-k8s-cluster" {
    source  = "Azure/appgw-ingress-k8s-cluster/azurerm"
    version = "0.1.1"
    resource_group_name             = "${var.env}-${var.resource_group_name)"
    aks_agent_os_disk_size          = "${var.aks_agent_os_disk_size}"
    aks_enable_rbac                 = "true"
    virtual_network_name            = "${var.cluster_vnet_name}"
    virtual_network_address_prefix  = "10.0.0.0/16"
    app_gateway_subnet_prefix       = "10.0.0.0/24"
    app_gateway_name                = "${var.env}-hsid-app-gateway"
    aks_subnet_name                 = "${var.env}-hsid-kube-subnet}"
    aks_subnet_address_prefix       = "10.0.1.0/24"
    aks_service_cidr                = "10.0.0.0/16"
    aks_dns_prefix                  = "${var.aks_dns_api_prefix}"
}

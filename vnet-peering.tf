module "vnet-peering" {
  source  = "dcos-terraform/vnet-peering/azurerm"
  version = "~> 0.2.0"
  cluster_name               = "${var.cluster_name}"
  local_region_network       = "master"
  local_resource_group_name  = "${var.resource-group-name}"
  local_vnet_name            = "management"
  local_vnet_id              = "${var.local_virtual_network_id}"
  remote_region_network      = "eus"
  remote_resource_group_name = "rg-eus-private-agents"
  remote_vnet_name           = "cluster"
  remote_vnet_id             = "${var.remote_virtual_network_id}"
}

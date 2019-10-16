module "vnet-peering" {
  source  = "dcos-terraform/vnet-peering/azurerm"
  version = "~> 0.2.0"
  cluster_name               = "${var.cluster_name}"
  local_region_network       = "US North Central"
  local_resource_group_name  = "${var.sc-resource-group-name}"
  local_vnet_name            = "management"
  local_vnet_id              = "${var.local-virtual-network-id}"
  remote_region_network      = "US South Central"
  remote_resource_group_name = "${var.nc-resource-group-name}"
  remote_vnet_name           = "cluster"
  remote_vnet_id             = "${var.remote-virtual-network-id}"
}

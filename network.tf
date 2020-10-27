resource "ibm_is_vpc" "mgmt_vpc" {
  name = "mgmt-vpc"
  resource_group = data.ibm_resource_group.group.id
  address_prefix_management = "manual"
}

resource "ibm_is_subnet" "mgmt_subnet" {
  name                     = "mgmt"
  vpc                      = ibm_is_vpc.mgmt_vpc.id
  zone                     = "eu-de-1"
  ipv4_cidr_block          = "172.16.0.0/1"
  resource_group           = data.ibm_resource_group.group.id
   }
}

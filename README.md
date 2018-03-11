Azure Kubernetes Terraform Module
=================================

Terraform module to provision a non-AKS managed Kubernetes cluster in Azure Public or Private Clouds.

This module is designed to work with Azure Public or Private Clouds where the Networks (VNet and Subnets) have already been defined. This module is ideal for creating Kubernetes cluster compute resources and outputs for a Kubernetes installation tool such as [Rancher Kubernetes Engine](https://github.com/rancher/rke).

This module provisions the following resources:

* 2 Availability sets. 1 worker set, 1 master set.
* 2 sets of (N) virtual machines, (N) master and (N) worker nodes.
* Network interface for each virtual machine
* 1 OS Disk for each virtual machine, using CoreOS by default.
* 2 Load balancers, 1 for masters, 1 for workers, load balancing port 443.
* Probes and backend address pools for load balancers

Usage
-----

```hcl
variable "vnet_name" {
  default = "vnet01"
}
variable "vnet_resource_group_name" {
  default = "vnetRG"
}
variable "network_security_group" {
  default = "networksg"
}
variable "subnet_name" {
  default = "subnet1"
}
variable "ssh_key_path" {
  default = "~/.ssh/linux_vm.pub"
}

resource "azurerm_resource_group" "main" {
  name = "TestK8sRG"
  location = "westus"
  tags = {
    environment = "test"
    costcenter  = "12345"
    appname     = "myapp"
  }
}

module "kubernetes" {
  source = "github.com/highwayoflife/terraform-azure-kubernetes"

  resource_group_name = "${azurerm_resource_group.main.name}"

  master_lb_private_ip_address = "10.10.123.12"
  master_node_count = 3

  worker_lb_private_ip_address = "10.10.123.13"
  worker_node_count = 3
  worker_availability_set_name = "PrimaryAvailabilitySet"

  ssh_key_path      = "${var.ssh_key_path}"

  subnet_name               = "${var.subnet_name}"
  vnet_name                 = "${var.vnet_name}"
  vnet_resource_group_name  = "${var.vnet_resource_group_name}"
}
```

RKE Bootstrap Steps
-------------------

* Todo

Argument Reference
------------------

* Todo

Attribute Reference
-------------------

* Todo

Contributors
------------

* [David Lewis](https://github.com/highwayoflife)

License
-------

[MIT](LICENSE)


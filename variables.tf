variable "subnet_name" {
  description = "Name of the subnet"
}
variable "vnet_name" {
  description = "Name of the VNet"
}
variable "vnet_resource_group_name" {
  description = "Virtual Network Resource Group Name"
}
variable "resource_group_name" {
  description = "Resource Group Name for an existing resource group where the kubernetes cluster will be created"
}
variable "master_vm_name" {
  default = "kubemaster"
}
variable "master_vm_size" {
  description = "Azure VM Size to use. See: https://docs.microsoft.com/en-us/azure/cloud-services/cloud-services-sizes-specs"
  default = "Standard_B2s"
}
variable "master_availability_set_name" {
  default = ""
}
variable "master_node_count" {
  default = 1
}
variable "admin_username" {
  default = "kubeadmin"
}
variable "master_username" {
  default = ""
}
variable "master_lb_prefix" {
  default = "masterlb"
}
variable "master_lb_type" {
  default = "private"
}
variable "master_lb_private_ip_address" {
  default = ""
}
variable "worker_vm_name" {
  default = "kubeworker"
}
variable "worker_vm_size" {
  description = "Azure VM Size to use. See: https://docs.microsoft.com/en-us/azure/cloud-services/cloud-services-sizes-specs"
  default = "Standard_B2s"
}
variable "worker_availability_set_name" {
  default = ""
}
variable "worker_node_count" {
  default = 1
}
variable "worker_username" {
  default = ""
}
variable "worker_lb_prefix" {
  default = "workerlb"
}
variable "worker_lb_type" {
  default = "private"
}
variable "worker_lb_private_ip_address" {
  default = ""
}
variable "ssh_key_path" {
  description = "Path to SSH Public Key"
}
variable "vm_os_publisher" {
  default = "coreos"
}
variable "vm_os_offer" {
  default = "coreos"
}
variable "vm_os_sku" {
  default = "stable"
}
variable "vm_os_version" {
  default = "latest"
}
variable "master_custom_data" {
  description = "(Optional) Specifies custom data to supply to the master machines. On linux-based systems, this can be used as a cloud-init script. Internally, Terraform will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes."
  default = ""
}
variable "worker_custom_data" {
  description = "(Optional) Specifies custom data to supply to the worker machines. On linux-based systems, this can be used as a cloud-init script. Internally, Terraform will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes."
  default = ""
}
variable "custom_data" {
  description = "(Optional) Specifies custom data to supply to both the master and worker machines and overrides the master and worker data file variables. On linux-based systems, this can be used as a cloud-init script. Internally, Terraform will base64 encode this value before sending it to the API. The maximum length of the binary array is 65535 bytes."
  default = ""
}

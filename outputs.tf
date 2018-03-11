output "master_username" {
  value = "${module.kube_master.admin_username}"
}
output "worker_username" {
  value = "${module.kube_worker.admin_username}"
}
output "admin_username" {
  value = "${var.admin_username}"
}
output "worker_nodes" {
  value = "${zipmap(module.kube_worker.node_names, module.kube_worker.node_private_ips)}"
}
output "master_nodes" {
  value = "${zipmap(module.kube_master.node_names, module.kube_master.node_private_ips)}"
}
output "master_loadbalancer_ip" {
  value = "${module.master_loadbalancer.lb_private_ip_address}"
}
output "worker_loadbalancer_ip" {
  value = "${module.worker_loadbalancer.lb_private_ip_address}"
}
output "worker_availability_set_name" {
  value = "${module.kube_worker.availability_set_name}"
}
output "master_availability_set_name" {
  value = "${module.kube_master.availability_set_name}"
}
output "subnet_netmask" {
  value = "${data.azurerm_subnet.subnet.address_prefix}"
}

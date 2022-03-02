// Output kubernetes resource
output "this_k8s_name" {
  description = "Name of the kunernetes cluster."
  value       = concat(alicloud_cs_managed_kubernetes.default.*.name, [""])[0]
}
output "this_k8s_id" {
  description = "ID of the kunernetes cluster."
  value       = concat(alicloud_cs_managed_kubernetes.default.*.id, [""])[0]
}
output "this_k8s_nodes" {
  description = "List nodes of cluster."
  value       = concat(alicloud_cs_managed_kubernetes.default.*.worker_nodes, [""])[0]
}
output "this_k8s_node_ids" {
  description = "List ids of of cluster node."
  value       = [for _, obj in concat(alicloud_cs_managed_kubernetes.default.*.worker_nodes, [{}])[0] : lookup(obj,"id")]
}
// Output VPC
output "this_vpc_id" {
  description = "The ID of the VPC."
  value       = concat(alicloud_cs_managed_kubernetes.default.*.vpc_id, [""])[0]
}

output "this_resource_group_id" {
  value = alicloud_vpc.default.resource_group_id
}

output "this_vswitch_ids" {
  description = "List ID of the VSwitches."
  value       = alicloud_cs_managed_kubernetes.default.*.worker_vswitch_ids
}
output "this_security_group_id" {
  description = "ID of the Security Group used to deploy kubernetes cluster."
  value       = concat(alicloud_cs_managed_kubernetes.default.*.security_group_id, [""])[0]
}
output "this_worker_ram_role_name" {
  value   = alicloud_cs_managed_kubernetes.default.*.worker_ram_role_name
}
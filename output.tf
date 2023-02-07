output "random_target_node" {
  value = module.random_target_node
  description = "All the returned values for the random_target_node module."
}

output "vms" {
  value       = module.proxmox_vm
  description = "All the returned values for the proxmox_vm module."
}

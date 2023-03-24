module "project" {
  source = "../"

  for_each = var.test_cases

  project     = each.value.project
  environment = each.value.environment

  random_target_node = each.value.random_target_node

  vm_instances = each.value.vm_instances
}
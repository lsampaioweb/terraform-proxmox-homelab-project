module "project" {
  source = "../../.."

  for_each = var.test_cases

  project     = each.value.project
  environment = each.value.environment
  separator   = each.value.separator
  vm_instance = each.value.vm_instance
}
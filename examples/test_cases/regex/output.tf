# output "_expected" {
#   value       = values(var.test_cases)[*].expected
#   description = "The expected values."
# }

# output "_returned" {
#   value       = values(module.project)[*].vms
#   description = "The returned values."
# }

output "result" {
  value = [for key, value in var.test_cases :
    format("[%s] [%s] [%t]",
      var.test_cases[key].expected,
      module.project[key].vms[key].name,
      var.test_cases[key].expected == module.project[key].vms[key].name,
    )
  ]
  description = "The comparison of the expected and returned values."
}
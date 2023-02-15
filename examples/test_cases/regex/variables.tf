variable "test_cases" {
  description = "The test cases."
  type = map(object({
    project     = string
    environment = string
    separator   = optional(string, "-")
    vm_instance = map(object({
      clone = optional(string)
    }))
    expected = string
  }))
}

test_cases = {
  "01" = {
    project     = "Other 123 Values"
    environment = "Staging"

    vm_instances = {
      "01" = {
        # Required:
        clone = "ubuntu-24-04-server-standard"

        # Optional:
        description = "VM with several different values."
        vmid        = 123
        startup     = "order=10"
        tags        = "tag1;tag2"
        vcpus       = 3
        memory      = 4096
      }
    }

    expected = "stg-other-123-values-01"
  }
}

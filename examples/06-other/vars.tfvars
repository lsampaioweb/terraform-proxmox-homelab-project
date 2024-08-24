test_cases = {
  "01" = {
    project     = "Other 123 Values"
    environment = "Staging"

    vm_instances = {
      "01" = {
        # Required:
        clone = "ubuntu-24-04-server-standard"

        # Optional:
        target_node = "edge-pve-02"
        name        = "VM-Other-Values"
        full_clone  = false
        description = "VM with several different values."
        vmid        = 1234
        startup     = "order=10"
        tags        = "tag1,tag2"
        vcpus       = 3
        memory      = 4096
      }
    }

    expected = "VM-Other-Values"
  }
}

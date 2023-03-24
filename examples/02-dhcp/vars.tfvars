test_cases = {
  "01" = {
    project     = "dhcp"
    environment = "Staging"

    vm_instances = {
      "01" = {
        # Required:
        clone = "ubuntu-22-04-server-standard"

        # Optional:
        target_node = "kvm-01"
      }
    }

    expected = "stg-dhcp-01"
  }
}

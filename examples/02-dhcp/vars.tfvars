test_cases = {
  "01" = {
    project     = "dhcp"
    environment = "Staging"

    vm_instances = {
      "01" = {
        # Required:
        clone = "ubuntu-24-04-server-standard"

        # Optional:
        target_node = "pve-01"
      }
    }

    expected = "stg-dhcp-01"
  }
}

test_cases = {
  "01" = {
    project     = "dhcp"
    environment = "Production"

    vm_instances = {
      "01" = {
        # Required:
        clone = "ubuntu-24-04-server-standard"

        # Optional:
        target_node = "edge-pve-01"
      }
    }

    expected = "prd-dhcp-01"
  }
}

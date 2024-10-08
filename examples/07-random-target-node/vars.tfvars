test_cases = {
  "01" = {
    project     = "Random Target Node"
    environment = "Staging"

    random_target_node = {
      min       = 1
      max       = 2
      prefix    = "edge-pve"
      scale     = "%.2d"
      separator = "-"
    }

    vm_instances = {
      "01" = {
        # Required:
        clone = "ubuntu-24-04-server-standard"
      }
    }

    expected = "stg-random-target-node-01"
  }
}

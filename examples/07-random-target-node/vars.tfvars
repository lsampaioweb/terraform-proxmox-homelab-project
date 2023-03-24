test_cases = {
  "01" = {
    project     = "Random Target Node"
    environment = "Staging"

    random_target_node = {
      min       = 1
      max       = 7
      prefix    = "kvm"
      scale     = "%.2d"
      separator = "-"
    }

    vm_instances = {
      "01" = {
        # Required:
        clone = "ubuntu-22-04-server-standard"
      }
    }

    expected = "stg-random-target-node-01"
  }
}

test_cases = {
  "01" = {
    project     = "ntp"
    environment = "Staging"

    vm_instances = {
      "01" = {
        # Required:
        clone = "ubuntu-24-04-server-raw"
      }
    }

    expected = "stg-ntp-01"
  }
}

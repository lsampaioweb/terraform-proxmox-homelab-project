test_cases = {
  "01" = {
    project     = "static"
    environment = "Staging"

    vm_instances = {
      "01" = {
        # Required:
        clone = "ubuntu-24-04-server-std-docker"

        # Optional:
        description = "VM with Static IP on the default VLAN."

        cloud_init = {
          ipconfig0 = "ip=192.168.0.101/24,gw=192.168.0.1"
        }
      }
    }

    expected = "stg-static-01"
  }
}

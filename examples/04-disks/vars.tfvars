test_cases = {
  "01" = {
    project     = "multiple disks"
    environment = "Staging"

    vm_instances = {
      "01" = {
        # Required:
        clone = "ubuntu-22-04-desktop-raw"

        # Optional:
        description = "VM with multiple disks."

        disks = {
          "01" = {
          },
          "02" = {
            storage = "Ceph_Gold"
          },
          "03" = {
            storage = "Ceph_Silver"
            size    = "15G"
            cache   = "writeback"
          },
          "04" = {
            storage   = "Ceph_Bronze"
            size      = "10G"
            ssd       = 0
            backup    = true
            replicate = 1
          }
        }
      }
    }

    expected = "stg-multiple-disks-01"
  }
}

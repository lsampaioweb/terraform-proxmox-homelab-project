test_cases = {
  "01" = {
    project     = "multiple disks"
    environment = "Staging"

    vm_instances = {
      "01" = {
        # Required:
        clone = "ubuntu-24-04-desktop-raw"

        # Optional:
        description = "VM with multiple disks."

        boot = "order=scsi0;net0"

        disks = {
          scsi = {
            # disk0 (required)
            scsi0 = {
              disk = [{}]
            }
            # disk1 (optional)
            scsi1 = {
              disk = []
            }
            # disk2 (optional)
            scsi2 = {
              disk = [{
                size    = "15G"
                storage = "Ceph_Gold"
              }]
            }
            scsi3 = {
              disk = [{
                backup     = true
                cache      = ""
                discard    = true
                emulatessd = true
                format     = "raw"
                iothread   = true
                replicate  = true
                size       = "16G"
                storage    = "Ceph_Gold"
              }]
            }
            # init-cloud drive (optional)
            scsi10 = {
              cloudinit = [{}]
            }
          }
        }
      }
    }

    expected = "stg-multiple-disks-01"
  }
}

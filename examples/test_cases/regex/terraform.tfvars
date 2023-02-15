test_cases = {
  "01" = {
    project     = "ntp"
    environment = "development"
    separator   = "-"
    vm_instance = { "01" = {} }

    expected = "dvl-ntp-01"
  }
  "02" = {
    project     = "Load Balancer"
    environment = "Staging"
    vm_instance = { "02" = {} }

    expected = "stg-load-balancer-02"
  },
  "03" = {
    project     = "JUMP SERVER"
    environment = "Production"
    separator   = "_"
    vm_instance = { "03" = {} }

    expected = "prd_jump_server_03"
  }
}

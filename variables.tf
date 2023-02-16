variable "random_target_node_min" {
  description = "The minimum inclusive value of the range."
  type        = number
  default     = 1
}

variable "random_target_node_max" {
  description = "The maximum inclusive value of the range."
  type        = number
  default     = 7
}

variable "random_target_node_prefix" {
  description = "The prefix of the Proxmox nodes."
  type        = string
  default     = "kvm"
}

variable "random_target_node_scale" {
  description = "The number of 0 (zeros) to fill in."
  type        = string
  default     = "%.2d"
}

variable "separator" {
  description = "The separator from the node name and the random integer result."
  type        = string
  default     = "-"
}

variable "project" {
  description = "The name of the project e.g Firewall or Load Balancer."
  type        = string

  validation {
    condition     = length(var.project) >= 3
    error_message = "The project name must have at least 3 characters."
  }
}

variable "environment" {
  description = "The name of the environment e.g Staging or Production."
  type        = string

  validation {
    condition     = length(regexall("[^a-zA-Z0-9-]", var.environment)) == 0
    error_message = "The environment name must only contain letters, numbers, and hyphens."
  }
}

variable "vm_instance" {
  description = "Specific values for this or these virtual machines."
  type = map(object({
    # VM
    ## General
    target_node = optional(string)
    name        = optional(string)
    vmid        = optional(number, 0)
    bios        = optional(string, "seabios")
    description = optional(string)
    onboot      = optional(bool)
    startup     = optional(string)
    oncreate    = optional(bool)
    pool        = optional(string)

    ## Clone
    os_type      = optional(string, "ubuntu")
    clone        = string
    full_clone   = optional(bool)
    force_create = optional(bool)

    ## OS
    tablet  = optional(bool, false)
    boot    = optional(string, "order=scsi0;net0")
    agent   = optional(number, 1)
    qemu_os = optional(string, "l26")
    numa    = optional(bool)
    hotplug = optional(string)
    scsihw  = optional(string, "virtio-scsi-single")
    tags    = optional(string)
    vga = optional(object({
      type   = optional(string)
      memory = optional(number)
    }), {})

    ## CPU
    cpu     = optional(string, "kvm64")
    sockets = optional(number, 1)
    cores   = optional(number, 6)
    vcpus   = optional(number, 2)

    ## Memory
    memory  = optional(number, 3072)
    balloon = optional(number, 1024)

    ## Hard Disk
    disks = optional(map(object({
      type      = optional(string, "scsi")
      storage   = optional(string, "Ceph_Gold")
      size      = optional(string, "20G")
      format    = optional(string, "raw")
      cache     = optional(string, "none")
      backup    = optional(bool, false)
      iothread  = optional(number, 1)
      replicate = optional(number, 0)
      ssd       = optional(number, 1)
      discard   = optional(string, "on")
      })), {
      "01" = {}
    })

    ## Networks
    networks = optional(map(object({
      model    = optional(string, "virtio")
      bridge   = optional(string, "vmbr0")
      tag      = optional(number)
      firewall = optional(bool)
      macaddr  = optional(string)
      })), {
      "01" = {}
    })

    ## High Availability
    hagroup = optional(string, "default")
    hastate = optional(string, "started")
  }))
}

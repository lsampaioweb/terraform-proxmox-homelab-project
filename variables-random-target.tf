variable "random_target_node" {
  description = "The variables of the random target node."
  default     = {}
  nullable    = false

  type = object({
    # The minimum inclusive value of the range.
    min = optional(number, 1)
    # The maximum inclusive value of the range.
    max = optional(number, 2)
    # The prefix of the Proxmox nodes.
    prefix = optional(string, "edge-pve")
    # The number of 0 (zeros) to fill in.
    scale = optional(string, "%.2d")
    # The separator from the node name and the random integer result.
    separator = optional(string, "-")
  })
}

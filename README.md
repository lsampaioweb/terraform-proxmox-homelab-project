# terraform-proxmox-homelab-project
Terraform module with all the default folders, files and settings used in the homelab projects

## Getting Started

Run these commands on the computer that is running Terraform:

1. **Initialize the project:**
    ```bash
    cd examples/
    terraform init
    ```

1. **Run an example:**

    To auto-approve the execution, add `-auto-approve` to the command.
    ```bash
    ./tf.sh apply 01-bare-minimum -auto-approve
    ./tf.sh destroy 01-bare-minimum

    ./tf.sh apply 01-bare-minimum
    ./tf.sh apply 02-dhcp
    ./tf.sh apply 03-static-ip
    ./tf.sh apply 04-disks
    ./tf.sh apply 05-networks
    ./tf.sh apply 06-other
    ./tf.sh apply 07-random-target-node
    ```

1. **Run all examples:**
    ```bash
    ./run-all.sh apply
    ./run-all.sh destroy
    ```

1. **Create a release to be imported into other Terraform projects:**
    ```bash
    git tag
    git tag -a 1.0.10 -m "feat: Enhance output with additional VM attributes."
    git push --tags
    ```

#
### License:

[MIT](LICENSE "MIT License")

#
### Created by:

1. Luciano Sampaio.

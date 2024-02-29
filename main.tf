
# Create the VM
resource "proxmox_vm_qemu" "win10-vm" {

  count = 1

    name = "${var.proxmox_node}-${var.vm_name}-${count.index + 1}"

  target_node = var.proxmox_node
  agent = 0
  bios = var.vm_bios


  clone      = var.vm_template
  full_clone = var.full_clone_true_false

  memory = var.memory_mb

efidisk {
    efitype = "4m"
    storage = var.storage_object
  }

disks {
    sata {
        sata0 {
            disk {
                size = var.disk_size_gb
                storage = var.storage_object
            }
        }
    }
}


  # Set the network
  network {
    model  = var.network_card_type
    bridge = var.network_bridge_port
    tag    = var.vlan
  }

 ipconfig0 = "ip=192.168.50.16${count.index + 1}/24,gw=192.168.50.251"
 nameserver = var.dns_address

}
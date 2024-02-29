variable "vm_name" {
  description = "name of the vm"
}

variable "proxmox_node" {
    description = "proxmode node"
}

variable "vm_bios" {
  description = "vm bios type"
}

variable "vm_template" {
  description = "Virtual machine template"
}

variable "full_clone_true_false" {
  description = "true or false - true creates a full clone - false creates a linked clone"
}

variable "memory_mb" {
  description = "quantity of memory in megabytes"
}
variable "storage_object" {
  description = "storage on which the VM will reside"
}
variable "disk_size_gb" {
  description = "Size of disk in Gigabytes"
}
variable "network_card_type" {
  description = "type/model of network card to install"
}

variable "token_id" {
  description = "api token ID"
}

variable "network_bridge_port" {
  description = "external interface"
}

variable "vlan" {
  description = "network VLAN number 1-4096 plus the usual exceptions"
}

variable "dns_address" {
  description = "Address of the DNS server"
}

variable "token_secret" {
  description = "The token"
}

variable "pm_api_url" {
  description = "url for the proxmox api"
}
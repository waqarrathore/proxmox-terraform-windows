vm_name = "your vm name here"
proxmox_node = "your proxmox node here" #just the resolvable name, ip address or fqdn will not work 
vm_bios = "ovmf"
vm_template = "your-vm-template-here"
memory_mb = "16384"
storage_object = "truenas-lvm"
disk_size_gb = 90
network_card_type = "e1000"
network_bridge_port = "vmbr0"
vlan = "50"
dns_address = "your dns server ip address here"
full_clone_true_false=false
token_id = "your_tk_id@pam!yourtkid-api-token"
token_secret = "your-token-secret-here"
pm_api_url = "https://your-server-here:8006/api2/json"
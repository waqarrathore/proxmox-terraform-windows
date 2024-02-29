terraform {
  required_providers {
    proxmox = {
      source = "TheGameProfi/proxmox"
      version = ">=1.0.0"
    }
  }
}

provider "proxmox" {
  pm_api_url          = var.pm_api_url
  pm_api_token_id     = var.token_id
  pm_api_token_secret = var.token_secret
  pm_tls_insecure     = true
  pm_log_enable       = true
  pm_log_file         = "terraform-plugin-proxmox.log"
  pm_log_levels = {
    _default    = "debug"
    _capturelog = ""
  }
}

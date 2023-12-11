terraform {
  required_providers {
    nsxt = {
      source = "vmware/nsxt"
      version = "~>3.4"
    }
		random = {
      source = "hashicorp/random"
      version = "~>3"
    }
  }
}
variable prefix {
  description = "Naming prefix to be used on all provisioned resources"
  type        = string
  default     = ""
}

variable description {
  description = "A description to place on all objects that support it"
  type        = string
  default     = "Provisioned by Terraform, do not manage via UI."
}

variable environment {
  description = "The environment type that you are creating"
  type        = string
  default     = "development"
}

variable public_subnet_suffix {
  description = "Suffix to append to public subnet names"
  type        = string
  default     = "public"
}

variable private_subnet_suffix {
  description = "Suffix to append to private subnet names"
  type        = string
  default     = "private"
}

variable public_subnets {
  description = "A list of public subnets to use"
  type        = list(string)
  default     = ["172.21.201.0/24","172.21.202.0/24","172.21.203.0/24"]
}

variable private_subnets {
  description = "A list of private subnets to use"
  type        = list(string)
  default     = ["172.21.211.0/24","172.21.212.0/24","172.21.213.0/24"]
}

variable snat_subnets {
  description = "A list of SNAT subnets to use"
  type        = list(string)
  default     = ["172.21.200.1/32","172.21.200.2/32","172.21.200.3/32"]
}

variable connectivity {
  description = "Toggles connectivity of the Tier1 gateway. Supports ON or OFF"
  type        = string
  default     = "ON"
}

variable private_subnets_snat_enabled {
  description = "Toggles the SNAT rules for the private segments"
  type        = bool
  default     = true
}

variable nsx_data {
	type = map(map(string))
	default = {
		"production" = {
			"transport_zone_name" = "TZ-OVERLAY"
			"edge_cluster_name" = "edge-cluster"
			"tier0_name" = "Provider-LR"
		}
	}
}
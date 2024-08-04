variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}

variable "default_outbound_access_enabled" {
  description = "Whether to allow outbound traffic to the internet."
  type        = bool
  default     = true
}

variable "private_endpoint_network_policies" {
  description = "Whether to enable network policies for the private endpoint."
  type        = string
  default     = "Disabled"
}

variable "private_link_service_network_policies_enabled" {
  description = "Whether to enable network policies for the private link service."
  type        = bool
  default     = false
}

variable "service_endpoints" {
  description = "The service endpoints to associate with the subnet."
  type        = list(string)
  default     = []
}

variable "service_endpoints_policy_ids" {
  description = "The service endpoints policies ids to apply to the subnet."
  type        = list(string)
  default     = []
}

variable "delegations" {
  description = "The service delegations for the subnet."
  type = list(object({
    name            = string
    service_name    = string
    service_actions = list(string)
  }))
  default = []
}
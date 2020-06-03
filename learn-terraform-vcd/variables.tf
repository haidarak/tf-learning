######################################
# VMware
######################################
variable "vcd_user" {}
variable "vcd_password" {}
variable "vcd_org" {}
variable "vcd_vdc" {}
variable "vcd_url" {}
variable "vcd_allow_unverified_ssl" {
  default = true
}
variable "vcd_max_retry_timeout"{}

variable "vm_cpu" {}
variable "vm_memory" {}
variable "vm_storage" {}

variable "vcd_edgegateway" {}

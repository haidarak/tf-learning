resource "vcd_vapp_vm" "vm" {
  vapp_name     = "prometheus"
  name          = "exporter"
  catalog_name  = data.vcd_catalog.ubuntu-catalog.name
  template_name = data.vcd_catalog_item.ubuntu-1804.name 
  memory        = var.vm_memory
  cpus          = var.vm_cpu
  cpu_cores     = 1
  
  guest_properties = {
    "hostname"         = "exporter"
  }

  override_template_disk {
    bus_type         = "paravirtual"
    size_in_mb       = var.vm_storage
    bus_number       = 0
    unit_number      = 0
  }
}

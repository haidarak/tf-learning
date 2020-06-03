
data "vcd_catalog" "ubuntu-catalog" {
  org  = var.vcd_org
  name = "Private Catalog"
}

data "vcd_catalog_item" "ubuntu-1804" {
  org     = var.vcd_org
  catalog = data.vcd_catalog.ubuntu-catalog.name
  name    = "ubuntu-18.04-modified-v1"
}
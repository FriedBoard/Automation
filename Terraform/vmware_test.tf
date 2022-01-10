terraform {
  required_providers {
    vmworkstation = {
      source  = "elsudano/vmworkstation"
    }
  }
  required_version = ">= 0.15.4"
}

variable "vmusername" {
    type = string
}

variable "vmpassword" {
    type = string
}

provider "vmworkstation" {
  user = var.vmusername
  password = var.vmpassword
  url = "http://localhost:8697/api"
  https = false
  debug = true
}

resource "vmworkstation_vm" "test_machine" {
  sourceid     = "VPTRCE0MK7NII3RH7PO0B68JQC3807RJ"
  denomination = "NewInstance2"
  description  = "TestBox"
  path         = "C:\\Users\\leroy\\Virtual Machines\\NewInstance2\\"
  processors   = "1"
  memory       = "2048"
}
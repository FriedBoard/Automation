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
  sourceid     = "QTR6F6BLLM7EVP62S4GIMKL4CJ5RJE84"
  denomination = "NewInstance"
  description  = "TestBox"
  path         = "C:\\Users\\leroy\\Virtual Machines\\test_machine"
  processors   = "2"
  memory       = "1024"
}
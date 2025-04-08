terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}


resource "local_file" "test_file" {
  filename = "${path.module}/test.txt"
  content  = "This is a test file created by Terraform."
}

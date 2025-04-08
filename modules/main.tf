terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.7"
    }
  }
}

resource "time_sleep" "wait_3_minutes" {
  create_duration = "3m"
}

resource "local_file" "test_file" {
  depends_on = [time_sleep.wait_3_minutes]
  filename   = "${path.module}/test5.txt"
  content    = "This is a test file created by Terraform."
}

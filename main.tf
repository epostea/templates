variable "param1" {
  default = "us-east-1"
}

resource "random_id" "test_random" {
  keepers = {
    test_id = "abc123"
    test_id2 = "this is a long test value"
    test_id3 = "value: ${var.param1}"
  }
  byte_length = 8
}

output "basic_id" {
  value = "${random_id.test_random.id}"
}


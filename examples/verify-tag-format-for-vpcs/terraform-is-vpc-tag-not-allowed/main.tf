
resource "ibm_is_vpc" "vpc_1" {
  name = "vpc1"
  tags = [
    "hello:world"
  ]
}


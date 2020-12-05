resource "ibm_resource_group" "cos_group" {
  name     = "prod"
}

resource "ibm_resource_instance" "cos_instance" {
  name              = "cos-instance"
  resource_group_id = ibm_resource_group.cos_group.id
  service           = "cloud-object-storage"
  plan              = "standard"
  location          = "global"
}

resource "ibm_cos_bucket" "standard-ams03-1" {
  bucket_name          = "1mybucket1"
  resource_instance_id = ibm_resource_instance.cos_instance.id
  region_location      = "us-south"
  storage_class        = "standard"
  key_protect          = "some-dummy-value1"
}

resource "ibm_cos_bucket" "standard-ams03-2" {
  bucket_name          = "1mybucket2"
  resource_instance_id = ibm_resource_instance.cos_instance.id
  region_location      = "us-south"
  storage_class        = "standard"
  key_protect          = "some-dummy-value2"
}

resource "ibm_cos_bucket" "standard-ams03-3" {
  bucket_name          = "1mybucket3"
  resource_instance_id = ibm_resource_instance.cos_instance.id
  region_location      = "us-south"
  storage_class        = "standard"
  key_protect          = "some-dummy-value3"
}
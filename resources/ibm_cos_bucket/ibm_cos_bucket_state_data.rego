package ibmcloud.resources.state.data.ibm_cos_bucket
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cos_bucket"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cos_bucket", "data").resources[_]
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
key_protect = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_protect", null) |
        res := resources_map[_]
        true
     }
}
single_site_location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "single_site_location", null) |
        res := resources_map[_]
        true
     }
}
storage_class = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "storage_class", null) |
        res := resources_map[_]
        true
     }
}
archive_rule = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "archive_rule", null) |
        res := resources_map[_]
        true
     }
}
bucket_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bucket_name", null) |
        res := resources_map[_]
        true
     }
}
bucket_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bucket_type", null) |
        res := resources_map[_]
        true
     }
}
bucket_region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bucket_region", null) |
        res := resources_map[_]
        true
     }
}
satellite_location_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "satellite_location_id", null) |
        res := resources_map[_]
        true
     }
}
cross_region_location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cross_region_location", null) |
        res := resources_map[_]
        true
     }
}
s3_endpoint_private = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "s3_endpoint_private", null) |
        res := resources_map[_]
        true
     }
}
s3_endpoint_direct = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "s3_endpoint_direct", null) |
        res := resources_map[_]
        true
     }
}
replication_rule = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "replication_rule", null) |
        res := resources_map[_]
        true
     }
}
endpoint_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_type", null) |
        res := resources_map[_]
        true
     }
}
region_location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region_location", null) |
        res := resources_map[_]
        true
     }
}
s3_endpoint_public = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "s3_endpoint_public", null) |
        res := resources_map[_]
        true
     }
}
allowed_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allowed_ip", null) |
        res := resources_map[_]
        true
     }
}
activity_tracking = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "activity_tracking", null) |
        res := resources_map[_]
        true
     }
}
metrics_monitoring = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "metrics_monitoring", null) |
        res := resources_map[_]
        true
     }
}
abort_incomplete_multipart_upload_days = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "abort_incomplete_multipart_upload_days", null) |
        res := resources_map[_]
        true
     }
}
expire_rule = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expire_rule", null) |
        res := resources_map[_]
        true
     }
}
retention_rule = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "retention_rule", null) |
        res := resources_map[_]
        true
     }
}
resource_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_instance_id", null) |
        res := resources_map[_]
        true
     }
}
object_versioning = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "object_versioning", null) |
        res := resources_map[_]
        true
     }
}
noncurrent_version_expiration = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "noncurrent_version_expiration", null) |
        res := resources_map[_]
        true
     }
}
hard_quota = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hard_quota", null) |
        res := resources_map[_]
        true
     }
}

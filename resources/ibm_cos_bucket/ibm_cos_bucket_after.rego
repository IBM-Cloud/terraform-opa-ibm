package ibmcloud.resources.after.ibm_cos_bucket
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cos_bucket"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cos_bucket").resources[_]
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
force_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "force_delete", null) |
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
bucket_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bucket_name", null) |
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
cross_region_location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cross_region_location", null) |
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
region_location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region_location", null) |
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
endpoint_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_type", null) |
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
archive_rule = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "archive_rule", null) |
        res := resources_map[_]
        true
     }
}


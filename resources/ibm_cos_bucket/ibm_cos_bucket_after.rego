package ibmcloud.resources.after.ibm_cos_bucket
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_cos_bucket"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cos_bucket").resources[_]
}
key_protect = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_protect", null) |
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
metrics_monitoring = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "metrics_monitoring", null) |
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
resource_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_instance_id", null) |
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
storage_class = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "storage_class", null) |
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
single_site_location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "single_site_location", null) |
        res := resources_map[_]
        true
     }
}


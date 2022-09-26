package ibmcloud.resources.prior.ibm_cos_bucket
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cos_bucket"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cos_bucket").resources[_]
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
endpoint_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_type", null) |
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


package ibmcloud.resources.prior.ibm_cos_bucket_object
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cos_bucket_object"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cos_bucket_object").resources[_]
}
bucket_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bucket_crn", null) |
        res := resources_map[_]
        true
     }
}
key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key", null) |
        res := resources_map[_]
        true
     }
}
bucket_location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bucket_location", null) |
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


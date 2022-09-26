package ibmcloud.resources.state.ibm_cos_bucket_replication_rule
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cos_bucket_replication_rule"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cos_bucket_replication_rule", "managed").resources[_]
}
bucket_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bucket_crn", null) |
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
replication_rule = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "replication_rule", null) |
        res := resources_map[_]
        true
     }
}

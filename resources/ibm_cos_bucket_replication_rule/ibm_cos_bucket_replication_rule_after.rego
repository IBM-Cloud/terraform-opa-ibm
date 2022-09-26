package ibmcloud.resources.after.ibm_cos_bucket_replication_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cos_bucket_replication_rule"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cos_bucket_replication_rule").resources[_]
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


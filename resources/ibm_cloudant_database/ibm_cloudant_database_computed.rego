package ibmcloud.resources.computed.ibm_cloudant_database
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cloudant_database"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cloudant_database").resources[_]
}
partitioned = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "partitioned", null) |
        res := resources_map[_]
        true
     }
}
shards = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "shards", null) |
        res := resources_map[_]
        true
     }
}


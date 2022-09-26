package ibmcloud.resources.state.ibm_cloudant_database
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cloudant_database"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cloudant_database", "managed").resources[_]
}
instance_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_crn", null) |
        res := resources_map[_]
        true
     }
}
db = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "db", null) |
        res := resources_map[_]
        true
     }
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

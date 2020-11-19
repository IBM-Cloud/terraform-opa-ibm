package ibmcloud.resources.state.data.ibm_cis_rate_limit
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_cis_rate_limit"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_rate_limit", "data").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
rate_limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rate_limit", null) |
        res := resources_map[_]
        true
     }
}

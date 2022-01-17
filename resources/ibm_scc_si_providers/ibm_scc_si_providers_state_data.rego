package ibmcloud.resources.state.data.ibm_scc_si_providers
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_si_providers"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_si_providers", "data").resources[_]
}
providers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "providers", null) |
        res := resources_map[_]
        true
     }
}
limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "limit", null) |
        res := resources_map[_]
        true
     }
}
skip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "skip", null) |
        res := resources_map[_]
        true
     }
}
total_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_count", null) |
        res := resources_map[_]
        true
     }
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_scc_si_occurrences
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_si_occurrences"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_si_occurrences", "data").resources[_]
}
page_size = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "page_size", null) |
        res := resources_map[_]
        true
     }
}
page_token = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "page_token", null) |
        res := resources_map[_]
        true
     }
}
occurrences = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "occurrences", null) |
        res := resources_map[_]
        true
     }
}
next_page_token = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "next_page_token", null) |
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
provider_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "provider_id", null) |
        res := resources_map[_]
        true
     }
}

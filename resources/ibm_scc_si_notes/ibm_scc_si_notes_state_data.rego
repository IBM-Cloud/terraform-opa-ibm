package ibmcloud.resources.state.data.ibm_scc_si_notes
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_si_notes"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_si_notes", "data").resources[_]
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
notes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notes", null) |
        res := resources_map[_]
        true
     }
}

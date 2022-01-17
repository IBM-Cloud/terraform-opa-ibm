package ibmcloud.resources.state.ibm_cis_edge_functions_action
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_edge_functions_action"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_edge_functions_action", "managed").resources[_]
}
script = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "script", null) |
        res := resources_map[_]
        true
     }
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
action_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action_name", null) |
        res := resources_map[_]
        true
     }
}

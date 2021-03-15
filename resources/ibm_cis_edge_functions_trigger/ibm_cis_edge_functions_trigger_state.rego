package ibmcloud.resources.state.ibm_cis_edge_functions_trigger
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_edge_functions_trigger"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_edge_functions_trigger", "managed").resources[_]
}
trigger_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "trigger_id", null) |
        res := resources_map[_]
        true
     }
}
pattern_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pattern_url", null) |
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
request_limit_fail_open = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "request_limit_fail_open", null) |
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

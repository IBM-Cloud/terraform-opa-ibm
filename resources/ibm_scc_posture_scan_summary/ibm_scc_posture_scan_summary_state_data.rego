package ibmcloud.resources.state.data.ibm_scc_posture_scan_summary
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_scan_summary"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_posture_scan_summary", "data").resources[_]
}
scan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scan_id", null) |
        res := resources_map[_]
        true
     }
}
profile_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile_id", null) |
        res := resources_map[_]
        true
     }
}
discover_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "discover_id", null) |
        res := resources_map[_]
        true
     }
}
profile_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile_name", null) |
        res := resources_map[_]
        true
     }
}
scope_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scope_id", null) |
        res := resources_map[_]
        true
     }
}
controls = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "controls", null) |
        res := resources_map[_]
        true
     }
}

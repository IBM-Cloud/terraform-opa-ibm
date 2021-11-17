package ibmcloud.resources.state.data.ibm_scc_posture_scan_summaries
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_scan_summaries"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_posture_scan_summaries", "data").resources[_]
}
summaries = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "summaries", null) |
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
scope_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scope_id", null) |
        res := resources_map[_]
        true
     }
}
scan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scan_id", null) |
        res := resources_map[_]
        true
     }
}
first = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "first", null) |
        res := resources_map[_]
        true
     }
}
last = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last", null) |
        res := resources_map[_]
        true
     }
}
previous = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "previous", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_scc_posture_scope_correlation
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_scope_correlation"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_posture_scope_correlation", "data").resources[_]
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
start_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "start_time", null) |
        res := resources_map[_]
        true
     }
}
last_heartbeat = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_heartbeat", null) |
        res := resources_map[_]
        true
     }
}
correlation_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "correlation_id", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_scc_posture_scopes
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_scopes"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_posture_scopes", "data").resources[_]
}
scope_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scope_id", null) |
        res := resources_map[_]
        true
     }
}
scopes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scopes", null) |
        res := resources_map[_]
        true
     }
}

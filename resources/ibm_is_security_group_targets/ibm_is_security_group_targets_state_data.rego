package ibmcloud.resources.state.data.ibm_is_security_group_targets
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_security_group_targets"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_security_group_targets", "data").resources[_]
}
security_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_group", null) |
        res := resources_map[_]
        true
     }
}
targets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "targets", null) |
        res := resources_map[_]
        true
     }
}

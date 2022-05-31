package ibmcloud.resources.state.data.ibm_is_security_group_rules
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_security_group_rules"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_security_group_rules", "data").resources[_]
}
security_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_group", null) |
        res := resources_map[_]
        true
     }
}
rules = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rules", null) |
        res := resources_map[_]
        true
     }
}

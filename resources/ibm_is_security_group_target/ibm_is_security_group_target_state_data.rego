package ibmcloud.resources.state.data.ibm_is_security_group_target
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_security_group_target"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_security_group_target", "data").resources[_]
}
security_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_group", null) |
        res := resources_map[_]
        true
     }
}
target = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
resource_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_type", null) |
        res := resources_map[_]
        true
     }
}
more_info = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "more_info", null) |
        res := resources_map[_]
        true
     }
}

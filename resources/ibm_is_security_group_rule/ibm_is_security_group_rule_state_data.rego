package ibmcloud.resources.state.data.ibm_is_security_group_rule
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_security_group_rule"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_security_group_rule", "data").resources[_]
}
port_min = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_min", null) |
        res := resources_map[_]
        true
     }
}
security_group_rule = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_group_rule", null) |
        res := resources_map[_]
        true
     }
}
direction = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "direction", null) |
        res := resources_map[_]
        true
     }
}
protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "protocol", null) |
        res := resources_map[_]
        true
     }
}
code = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "code", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
security_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_group", null) |
        res := resources_map[_]
        true
     }
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
ip_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_version", null) |
        res := resources_map[_]
        true
     }
}
remote = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "remote", null) |
        res := resources_map[_]
        true
     }
}
port_max = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_max", null) |
        res := resources_map[_]
        true
     }
}

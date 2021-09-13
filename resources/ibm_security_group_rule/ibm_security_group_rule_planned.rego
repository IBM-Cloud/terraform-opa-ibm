package ibmcloud.resources.planned.ibm_security_group_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_security_group_rule"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_security_group_rule").resources[_]
}
ether_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ether_type", null) |
        res := resources_map[_]
        true
     }
}
port_range_min = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_range_min", null) |
        res := resources_map[_]
        true
     }
}
port_range_max = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_range_max", null) |
        res := resources_map[_]
        true
     }
}
remote_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "remote_group_id", null) |
        res := resources_map[_]
        true
     }
}
remote_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "remote_ip", null) |
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
security_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_group_id", null) |
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


package ibmcloud.resources.after.ibm_is_security_group_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_security_group_rule"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_security_group_rule").resources[_]
}
udp = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "udp", null) |
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
remote = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "remote", null) |
        res := resources_map[_]
        true
     }
}
tcp = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tcp", null) |
        res := resources_map[_]
        true
     }
}
icmp = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "icmp", null) |
        res := resources_map[_]
        true
     }
}
group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "group", null) |
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


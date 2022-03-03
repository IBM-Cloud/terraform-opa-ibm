package ibmcloud.resources.after.ibm_is_network_acl_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_network_acl_rule"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_network_acl_rule").resources[_]
}
action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action", null) |
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
direction = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "direction", null) |
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
network_acl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_acl", null) |
        res := resources_map[_]
        true
     }
}
before = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "before", null) |
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
source = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source", null) |
        res := resources_map[_]
        true
     }
}
destination = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination", null) |
        res := resources_map[_]
        true
     }
}
udp = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "udp", null) |
        res := resources_map[_]
        true
     }
}


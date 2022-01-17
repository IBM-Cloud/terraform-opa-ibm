package ibmcloud.resources.computed.ibm_is_instance_network_interface
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_network_interface"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_instance_network_interface").resources[_]
}
port_speed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_speed", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
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
primary_ipv4_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "primary_ipv4_address", null) |
        res := resources_map[_]
        true
     }
}
network_interface = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_interface", null) |
        res := resources_map[_]
        true
     }
}
security_groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_groups", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
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
floating_ips = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "floating_ips", null) |
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


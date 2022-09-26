package ibmcloud.resources.planned.ibm_is_bare_metal_server_network_interface_allow_float
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_network_interface_allow_float"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_bare_metal_server_network_interface_allow_float").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet", null) |
        res := resources_map[_]
        true
     }
}
vlan = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vlan", null) |
        res := resources_map[_]
        true
     }
}
primary_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "primary_ip", null) |
        res := resources_map[_]
        true
     }
}
bare_metal_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bare_metal_server", null) |
        res := resources_map[_]
        true
     }
}
allow_ip_spoofing = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allow_ip_spoofing", null) |
        res := resources_map[_]
        true
     }
}
enable_infrastructure_nat = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enable_infrastructure_nat", null) |
        res := resources_map[_]
        true
     }
}


package ibmcloud.resources.state.data.ibm_is_bare_metal_server_network_interface
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_network_interface"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_bare_metal_server_network_interface", "data").resources[_]
}
floating_ips = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "floating_ips", null) |
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
subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet", null) |
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
interface_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "interface_type", null) |
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
port_speed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_speed", null) |
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
security_groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_groups", null) |
        res := resources_map[_]
        true
     }
}
allow_interface_to_float = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allow_interface_to_float", null) |
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
allowed_vlans = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allowed_vlans", null) |
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
mac_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mac_address", null) |
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

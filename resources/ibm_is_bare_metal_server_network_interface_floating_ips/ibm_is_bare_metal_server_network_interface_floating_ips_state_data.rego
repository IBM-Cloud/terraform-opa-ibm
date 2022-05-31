package ibmcloud.resources.state.data.ibm_is_bare_metal_server_network_interface_floating_ips
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_network_interface_floating_ips"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_bare_metal_server_network_interface_floating_ips", "data").resources[_]
}
floating_ips = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "floating_ips", null) |
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
network_interface = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_interface", null) |
        res := resources_map[_]
        true
     }
}

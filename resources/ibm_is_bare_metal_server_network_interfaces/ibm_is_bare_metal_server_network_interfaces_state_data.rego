package ibmcloud.resources.state.data.ibm_is_bare_metal_server_network_interfaces
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_network_interfaces"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_bare_metal_server_network_interfaces", "data").resources[_]
}
bare_metal_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bare_metal_server", null) |
        res := resources_map[_]
        true
     }
}
network_interfaces = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_interfaces", null) |
        res := resources_map[_]
        true
     }
}

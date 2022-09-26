package ibmcloud.resources.state.data.ibm_is_vpn_server_client_configuration
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_server_client_configuration"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpn_server_client_configuration", "data").resources[_]
}
vpn_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_server", null) |
        res := resources_map[_]
        true
     }
}
file_path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file_path", null) |
        res := resources_map[_]
        true
     }
}
vpn_server_client_configuration = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_server_client_configuration", null) |
        res := resources_map[_]
        true
     }
}

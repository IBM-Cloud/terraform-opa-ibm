package ibmcloud.resources.state.data.ibm_is_vpn_server_clients
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_server_clients"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpn_server_clients", "data").resources[_]
}
vpn_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_server", null) |
        res := resources_map[_]
        true
     }
}
clients = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "clients", null) |
        res := resources_map[_]
        true
     }
}

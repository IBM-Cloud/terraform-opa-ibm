package ibmcloud.resources.state.data.ibm_is_vpn_server_routes
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_server_routes"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpn_server_routes", "data").resources[_]
}
vpn_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_server", null) |
        res := resources_map[_]
        true
     }
}
routes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routes", null) |
        res := resources_map[_]
        true
     }
}

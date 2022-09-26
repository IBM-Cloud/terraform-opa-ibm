package ibmcloud.resources.state.data.ibm_is_vpn_servers
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_servers"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpn_servers", "data").resources[_]
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
vpn_servers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_servers", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_is_vpn_gateways
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_gateways"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpn_gateways", "data").resources[_]
}
vpn_gateways = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_gateways", null) |
        res := resources_map[_]
        true
     }
}

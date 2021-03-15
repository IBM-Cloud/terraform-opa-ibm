package ibmcloud.resources.prior.ibm_is_vpn_gateway_connections
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_gateway_connections"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_vpn_gateway_connections").resources[_]
}
vpn_gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_gateway", null) |
        res := resources_map[_]
        true
     }
}


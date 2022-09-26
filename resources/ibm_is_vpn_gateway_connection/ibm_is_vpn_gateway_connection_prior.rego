package ibmcloud.resources.prior.ibm_is_vpn_gateway_connection
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_gateway_connection"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_vpn_gateway_connection").resources[_]
}
vpn_gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_gateway", null) |
        res := resources_map[_]
        true
     }
}
vpn_gateway_connection_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_gateway_connection_name", null) |
        res := resources_map[_]
        true
     }
}
vpn_gateway_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_gateway_name", null) |
        res := resources_map[_]
        true
     }
}
vpn_gateway_connection = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_gateway_connection", null) |
        res := resources_map[_]
        true
     }
}


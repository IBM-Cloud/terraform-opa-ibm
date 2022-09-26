package ibmcloud.resources.prior.ibm_is_vpn_server_clients
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_server_clients"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_vpn_server_clients").resources[_]
}
vpn_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_server", null) |
        res := resources_map[_]
        true
     }
}


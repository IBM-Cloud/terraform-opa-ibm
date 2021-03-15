package ibmcloud.resources.prior.ibm_is_virtual_endpoint_gateway_ips
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_virtual_endpoint_gateway_ips"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_virtual_endpoint_gateway_ips").resources[_]
}
gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway", null) |
        res := resources_map[_]
        true
     }
}


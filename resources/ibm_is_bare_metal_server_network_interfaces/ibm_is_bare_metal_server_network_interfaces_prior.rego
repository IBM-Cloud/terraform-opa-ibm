package ibmcloud.resources.prior.ibm_is_bare_metal_server_network_interfaces
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_network_interfaces"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_bare_metal_server_network_interfaces").resources[_]
}
bare_metal_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bare_metal_server", null) |
        res := resources_map[_]
        true
     }
}


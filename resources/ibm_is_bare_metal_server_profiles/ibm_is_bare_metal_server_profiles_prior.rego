package ibmcloud.resources.prior.ibm_is_bare_metal_server_profiles
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_profiles"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_bare_metal_server_profiles").resources[_]
}


package ibmcloud.resources.prior.ibm_scc_account_location_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_account_location_settings"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_scc_account_location_settings").resources[_]
}


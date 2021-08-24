package ibmcloud.resources.prior.ibm_atracker_endpoints
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_endpoints"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_atracker_endpoints").resources[_]
}


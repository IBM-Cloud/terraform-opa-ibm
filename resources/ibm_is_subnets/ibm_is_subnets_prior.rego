package ibmcloud.resources.prior.ibm_is_subnets
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnets"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_subnets").resources[_]
}


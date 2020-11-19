package ibmcloud.resources.prior.ibm_is_instances
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_is_instances"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_instances").resources[_]
}


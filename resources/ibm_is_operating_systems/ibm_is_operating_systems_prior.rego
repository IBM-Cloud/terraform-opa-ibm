package ibmcloud.resources.prior.ibm_is_operating_systems
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_operating_systems"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_operating_systems").resources[_]
}


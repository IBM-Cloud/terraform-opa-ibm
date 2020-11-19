package ibmcloud.resources.prior.ibm_tg_locations
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_tg_locations"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_tg_locations").resources[_]
}


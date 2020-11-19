package ibmcloud.resources.prior.ibm_dl_gateways
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_dl_gateways"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_dl_gateways").resources[_]
}


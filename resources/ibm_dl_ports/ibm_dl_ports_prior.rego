package ibmcloud.resources.prior.ibm_dl_ports
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dl_ports"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_dl_ports").resources[_]
}


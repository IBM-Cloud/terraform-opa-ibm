package ibmcloud.resources.prior.ibm_cis_ip_addresses
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_ip_addresses"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cis_ip_addresses").resources[_]
}


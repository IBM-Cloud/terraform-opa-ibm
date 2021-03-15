package ibmcloud.resources.prior.ibm_cr_namespaces
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cr_namespaces"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cr_namespaces").resources[_]
}


package ibmcloud.resources.prior.ibm_scc_posture_scopes
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_scopes"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_scc_posture_scopes").resources[_]
}


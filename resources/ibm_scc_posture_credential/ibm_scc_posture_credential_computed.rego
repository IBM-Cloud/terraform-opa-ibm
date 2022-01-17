package ibmcloud.resources.computed.ibm_scc_posture_credential
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_credential"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_scc_posture_credential").resources[_]
}


package ibmcloud.resources.prior.ibm_scc_posture_credential
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_credential"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_scc_posture_credential").resources[_]
}
credential_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credential_id", null) |
        res := resources_map[_]
        true
     }
}


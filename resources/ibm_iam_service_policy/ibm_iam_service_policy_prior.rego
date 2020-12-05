package ibmcloud.resources.prior.ibm_iam_service_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_service_policy"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_iam_service_policy").resources[_]
}
iam_service_id = ret {
    ret := {res.address: object.get(res.attributes, "iam_service_id", null) |
        res := resources_map[_]
        true
     }
}


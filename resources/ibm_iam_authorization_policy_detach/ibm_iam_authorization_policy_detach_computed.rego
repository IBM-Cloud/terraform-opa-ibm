package ibmcloud.resources.computed.ibm_iam_authorization_policy_detach
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_iam_authorization_policy_detach"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_authorization_policy_detach").resources[_]
}


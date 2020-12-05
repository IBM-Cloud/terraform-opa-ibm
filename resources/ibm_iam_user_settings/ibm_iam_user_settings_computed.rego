package ibmcloud.resources.computed.ibm_iam_user_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_user_settings"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_user_settings").resources[_]
}


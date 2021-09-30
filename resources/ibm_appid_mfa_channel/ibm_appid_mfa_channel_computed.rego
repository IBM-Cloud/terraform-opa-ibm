package ibmcloud.resources.computed.ibm_appid_mfa_channel
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_mfa_channel"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_appid_mfa_channel").resources[_]
}


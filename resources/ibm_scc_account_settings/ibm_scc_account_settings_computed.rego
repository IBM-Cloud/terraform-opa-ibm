package ibmcloud.resources.computed.ibm_scc_account_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_account_settings"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_scc_account_settings").resources[_]
}


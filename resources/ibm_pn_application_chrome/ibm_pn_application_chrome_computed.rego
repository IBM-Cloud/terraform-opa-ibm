package ibmcloud.resources.computed.ibm_pn_application_chrome
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pn_application_chrome"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pn_application_chrome").resources[_]
}


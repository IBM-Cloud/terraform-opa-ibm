package ibmcloud.resources.computed.ibm_appid_languages
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_languages"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_appid_languages").resources[_]
}


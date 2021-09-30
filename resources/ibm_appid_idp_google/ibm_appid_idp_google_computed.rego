package ibmcloud.resources.computed.ibm_appid_idp_google
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_idp_google"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_appid_idp_google").resources[_]
}
redirect_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "redirect_url", null) |
        res := resources_map[_]
        true
     }
}


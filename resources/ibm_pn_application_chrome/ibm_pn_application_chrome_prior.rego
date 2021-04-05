package ibmcloud.resources.prior.ibm_pn_application_chrome
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pn_application_chrome"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_pn_application_chrome").resources[_]
}
guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "guid", null) |
        res := resources_map[_]
        true
     }
}


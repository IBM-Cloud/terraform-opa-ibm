package ibmcloud.resources.after.ibm_pn_application_chrome
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pn_application_chrome"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_pn_application_chrome").resources[_]
}
guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "guid", null) |
        res := resources_map[_]
        true
     }
}
server_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "server_key", null) |
        res := resources_map[_]
        true
     }
}
web_site_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "web_site_url", null) |
        res := resources_map[_]
        true
     }
}


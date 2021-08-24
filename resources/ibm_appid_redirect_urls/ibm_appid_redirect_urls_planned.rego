package ibmcloud.resources.planned.ibm_appid_redirect_urls
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_redirect_urls"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_appid_redirect_urls").resources[_]
}
tenant_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_id", null) |
        res := resources_map[_]
        true
     }
}
urls = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "urls", null) |
        res := resources_map[_]
        true
     }
}


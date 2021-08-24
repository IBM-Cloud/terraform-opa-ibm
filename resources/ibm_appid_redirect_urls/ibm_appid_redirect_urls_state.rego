package ibmcloud.resources.state.ibm_appid_redirect_urls
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_redirect_urls"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_redirect_urls", "managed").resources[_]
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

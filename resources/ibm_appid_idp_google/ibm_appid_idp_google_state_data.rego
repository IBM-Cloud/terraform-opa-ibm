package ibmcloud.resources.state.data.ibm_appid_idp_google
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_idp_google"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_idp_google", "data").resources[_]
}
config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "config", null) |
        res := resources_map[_]
        true
     }
}
redirect_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "redirect_url", null) |
        res := resources_map[_]
        true
     }
}
tenant_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_id", null) |
        res := resources_map[_]
        true
     }
}
is_active = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_active", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.model.ibm_appid_idp_google
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_idp_google"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_appid_idp_google").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_appid_idp_google", "managed").resources[_]
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
config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "config", null) |
        res := resources_map[_]
        true
     }
}


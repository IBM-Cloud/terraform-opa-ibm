package ibmcloud.resources.state.data.ibm_appid_mfa
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_mfa"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_mfa", "data").resources[_]
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

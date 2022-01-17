package ibmcloud.resources.state.data.ibm_appid_user_roles
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_user_roles"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_user_roles", "data").resources[_]
}
tenant_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_id", null) |
        res := resources_map[_]
        true
     }
}
subject = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subject", null) |
        res := resources_map[_]
        true
     }
}
roles = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "roles", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_appid_apm
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_apm"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_apm", "data").resources[_]
}
min_password_change_interval = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "min_password_change_interval", null) |
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
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
prevent_password_with_username = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "prevent_password_with_username", null) |
        res := resources_map[_]
        true
     }
}
password_reuse = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "password_reuse", null) |
        res := resources_map[_]
        true
     }
}
password_expiration = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "password_expiration", null) |
        res := resources_map[_]
        true
     }
}
lockout_policy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lockout_policy", null) |
        res := resources_map[_]
        true
     }
}

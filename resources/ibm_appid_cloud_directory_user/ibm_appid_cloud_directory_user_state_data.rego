package ibmcloud.resources.state.data.ibm_appid_cloud_directory_user
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_cloud_directory_user"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_cloud_directory_user", "data").resources[_]
}
user_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_name", null) |
        res := resources_map[_]
        true
     }
}
email = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "email", null) |
        res := resources_map[_]
        true
     }
}
locked_until = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locked_until", null) |
        res := resources_map[_]
        true
     }
}
user_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_id", null) |
        res := resources_map[_]
        true
     }
}
display_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "display_name", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
meta = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "meta", null) |
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
active = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "active", null) |
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

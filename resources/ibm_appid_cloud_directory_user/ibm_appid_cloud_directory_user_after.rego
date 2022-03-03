package ibmcloud.resources.after.ibm_appid_cloud_directory_user
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_cloud_directory_user"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_appid_cloud_directory_user").resources[_]
}
create_profile = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "create_profile", null) |
        res := resources_map[_]
        true
     }
}
user_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_name", null) |
        res := resources_map[_]
        true
     }
}
password = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "password", null) |
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
locked_until = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locked_until", null) |
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


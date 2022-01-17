package ibmcloud.resources.after.ibm_appid_idp_cloud_directory
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_idp_cloud_directory"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_appid_idp_cloud_directory").resources[_]
}
welcome_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "welcome_enabled", null) |
        res := resources_map[_]
        true
     }
}
identity_confirm_methods = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "identity_confirm_methods", null) |
        res := resources_map[_]
        true
     }
}
identity_field = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "identity_field", null) |
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
self_service_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "self_service_enabled", null) |
        res := resources_map[_]
        true
     }
}
signup_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "signup_enabled", null) |
        res := resources_map[_]
        true
     }
}
reset_password_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reset_password_enabled", null) |
        res := resources_map[_]
        true
     }
}
reset_password_notification_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reset_password_notification_enabled", null) |
        res := resources_map[_]
        true
     }
}
identity_confirm_access_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "identity_confirm_access_mode", null) |
        res := resources_map[_]
        true
     }
}


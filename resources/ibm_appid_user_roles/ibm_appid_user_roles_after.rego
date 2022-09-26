package ibmcloud.resources.after.ibm_appid_user_roles
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_user_roles"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_appid_user_roles").resources[_]
}
role_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "role_ids", null) |
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
subject = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subject", null) |
        res := resources_map[_]
        true
     }
}


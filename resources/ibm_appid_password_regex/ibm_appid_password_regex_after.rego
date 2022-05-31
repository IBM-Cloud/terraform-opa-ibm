package ibmcloud.resources.after.ibm_appid_password_regex
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_password_regex"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_appid_password_regex").resources[_]
}
error_message = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "error_message", null) |
        res := resources_map[_]
        true
     }
}
regex = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "regex", null) |
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


package ibmcloud.resources.planned.ibm_appid_password_regex
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_password_regex"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_appid_password_regex").resources[_]
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
error_message = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "error_message", null) |
        res := resources_map[_]
        true
     }
}


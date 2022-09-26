package ibmcloud.resources.model.ibm_appid_user_roles
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_user_roles"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_appid_user_roles").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_appid_user_roles", "managed").resources[_]
}
subject = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subject", null) |
        res := resources_map[_]
        true
     }
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


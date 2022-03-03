package ibmcloud.resources.after.ibm_appid_idp_google
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_idp_google"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_appid_idp_google").resources[_]
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
config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "config", null) |
        res := resources_map[_]
        true
     }
}


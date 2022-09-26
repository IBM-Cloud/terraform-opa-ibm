package ibmcloud.resources.after.ibm_appid_application_scopes
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_application_scopes"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_appid_application_scopes").resources[_]
}
client_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_id", null) |
        res := resources_map[_]
        true
     }
}
scopes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scopes", null) |
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


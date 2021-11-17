package ibmcloud.resources.prior.ibm_appid_application_scopes
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_application_scopes"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_appid_application_scopes").resources[_]
}
client_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_id", null) |
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


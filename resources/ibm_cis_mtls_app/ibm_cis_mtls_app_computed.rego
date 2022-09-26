package ibmcloud.resources.computed.ibm_cis_mtls_app
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_mtls_app"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_mtls_app").resources[_]
}
pol_updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pol_updated_at", null) |
        res := resources_map[_]
        true
     }
}
app_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "app_id", null) |
        res := resources_map[_]
        true
     }
}
policy_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policy_id", null) |
        res := resources_map[_]
        true
     }
}
app_created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "app_created_at", null) |
        res := resources_map[_]
        true
     }
}
app_updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "app_updated_at", null) |
        res := resources_map[_]
        true
     }
}
pol_created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pol_created_at", null) |
        res := resources_map[_]
        true
     }
}


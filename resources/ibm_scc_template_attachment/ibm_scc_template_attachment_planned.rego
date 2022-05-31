package ibmcloud.resources.planned.ibm_scc_template_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_template_attachment"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_scc_template_attachment").resources[_]
}
template_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_id", null) |
        res := resources_map[_]
        true
     }
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}
included_scope = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "included_scope", null) |
        res := resources_map[_]
        true
     }
}
excluded_scopes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "excluded_scopes", null) |
        res := resources_map[_]
        true
     }
}


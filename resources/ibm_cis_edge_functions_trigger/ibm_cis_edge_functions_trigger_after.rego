package ibmcloud.resources.after.ibm_cis_edge_functions_trigger
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_edge_functions_trigger"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cis_edge_functions_trigger").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
pattern_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pattern_url", null) |
        res := resources_map[_]
        true
     }
}
action_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action_name", null) |
        res := resources_map[_]
        true
     }
}


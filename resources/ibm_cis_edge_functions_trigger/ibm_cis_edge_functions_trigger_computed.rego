package ibmcloud.resources.computed.ibm_cis_edge_functions_trigger
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_edge_functions_trigger"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_edge_functions_trigger").resources[_]
}
trigger_id = ret {
    ret := {res.address: object.get(res.attributes, "trigger_id", null) |
        res := resources_map[_]
        true
     }
}
request_limit_fail_open = ret {
    ret := {res.address: object.get(res.attributes, "request_limit_fail_open", null) |
        res := resources_map[_]
        true
     }
}


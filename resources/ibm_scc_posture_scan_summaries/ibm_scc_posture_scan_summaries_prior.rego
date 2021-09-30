package ibmcloud.resources.prior.ibm_scc_posture_scan_summaries
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_scan_summaries"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_scc_posture_scan_summaries").resources[_]
}
profile_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile_id", null) |
        res := resources_map[_]
        true
     }
}
scope_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scope_id", null) |
        res := resources_map[_]
        true
     }
}
scan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scan_id", null) |
        res := resources_map[_]
        true
     }
}


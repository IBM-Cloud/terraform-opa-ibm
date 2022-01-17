package ibmcloud.resources.prior.ibm_scc_posture_scan_summaries
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_scan_summaries"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_scc_posture_scan_summaries").resources[_]
}
report_setting_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "report_setting_id", null) |
        res := resources_map[_]
        true
     }
}


package ibmcloud.resources.computed.ibm_scc_posture_collector
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_collector"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_scc_posture_collector").resources[_]
}


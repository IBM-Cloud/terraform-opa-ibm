package ibmcloud.resources.computed.ibm_cis_edge_functions_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_edge_functions_action"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_edge_functions_action").resources[_]
}


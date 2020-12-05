package ibmcloud.resources.computed.ibm_compute_placement_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_placement_group"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_compute_placement_group").resources[_]
}


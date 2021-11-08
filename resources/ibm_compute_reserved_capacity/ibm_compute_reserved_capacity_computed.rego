package ibmcloud.resources.computed.ibm_compute_reserved_capacity
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_reserved_capacity"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_compute_reserved_capacity").resources[_]
}


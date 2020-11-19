package ibmcloud.resources.computed.ibm_compute_autoscale_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_compute_autoscale_group"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_compute_autoscale_group").resources[_]
}


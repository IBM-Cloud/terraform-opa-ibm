package ibmcloud.resources.computed.ibm_pi_capture
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_pi_capture"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_capture").resources[_]
}


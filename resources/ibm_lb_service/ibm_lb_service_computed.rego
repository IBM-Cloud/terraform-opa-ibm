package ibmcloud.resources.computed.ibm_lb_service
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_service"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_lb_service").resources[_]
}


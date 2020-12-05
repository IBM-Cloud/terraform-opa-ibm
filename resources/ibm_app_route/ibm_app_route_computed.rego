package ibmcloud.resources.computed.ibm_app_route
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_route"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_app_route").resources[_]
}


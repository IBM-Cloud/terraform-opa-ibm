package ibmcloud.resources.computed.ibm_container_api_key_reset
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_api_key_reset"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_container_api_key_reset").resources[_]
}


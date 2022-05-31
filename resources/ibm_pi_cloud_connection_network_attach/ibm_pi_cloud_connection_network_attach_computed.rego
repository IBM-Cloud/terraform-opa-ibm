package ibmcloud.resources.computed.ibm_pi_cloud_connection_network_attach
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_cloud_connection_network_attach"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_cloud_connection_network_attach").resources[_]
}


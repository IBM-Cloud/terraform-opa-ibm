package ibmcloud.resources.computed.ibm_network_gateway_vlan_association
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_gateway_vlan_association"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_network_gateway_vlan_association").resources[_]
}


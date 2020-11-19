package ibmcloud.resources.computed.ibm_network_vlan_spanning
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_network_vlan_spanning"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_network_vlan_spanning").resources[_]
}


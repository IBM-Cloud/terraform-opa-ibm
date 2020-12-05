package ibmcloud.resources.planned.ibm_network_vlan_spanning
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_vlan_spanning"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_network_vlan_spanning").resources[_]
}
vlan_spanning = ret {
    ret := {res.address: object.get(res.attributes, "vlan_spanning", null) |
        res := resources_map[_]
        true
     }
}


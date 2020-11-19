package ibmcloud.resources.planned.ibm_network_vlan_spanning
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_network_vlan_spanning"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_network_vlan_spanning").resources[_]
}
vlan_spanning = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vlan_spanning", null) |
        res := resources_map[_]
        true
     }
}


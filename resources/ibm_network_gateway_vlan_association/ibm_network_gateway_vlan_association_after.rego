package ibmcloud.resources.after.ibm_network_gateway_vlan_association
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_gateway_vlan_association"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_network_gateway_vlan_association").resources[_]
}
gateway_id = ret {
    ret := {res.address: object.get(res.attributes, "gateway_id", null) |
        res := resources_map[_]
        true
     }
}
network_vlan_id = ret {
    ret := {res.address: object.get(res.attributes, "network_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
bypass = ret {
    ret := {res.address: object.get(res.attributes, "bypass", null) |
        res := resources_map[_]
        true
     }
}


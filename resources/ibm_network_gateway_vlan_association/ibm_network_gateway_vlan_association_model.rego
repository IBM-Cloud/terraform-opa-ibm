package ibmcloud.resources.model.ibm_network_gateway_vlan_association
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_gateway_vlan_association"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_network_gateway_vlan_association").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_network_gateway_vlan_association", "managed").resources[_]
}
network_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
bypass = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bypass", null) |
        res := resources_map[_]
        true
     }
}
gateway_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway_id", null) |
        res := resources_map[_]
        true
     }
}


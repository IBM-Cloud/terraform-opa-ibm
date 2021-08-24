package ibmcloud.resources.computed.ibm_pi_network
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_network"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_network").resources[_]
}
vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vlan_id", null) |
        res := resources_map[_]
        true
     }
}
pi_cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cidr", null) |
        res := resources_map[_]
        true
     }
}
network_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_id", null) |
        res := resources_map[_]
        true
     }
}


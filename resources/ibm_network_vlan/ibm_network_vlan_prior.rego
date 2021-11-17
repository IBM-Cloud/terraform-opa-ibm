package ibmcloud.resources.prior.ibm_network_vlan
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_vlan"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_network_vlan").resources[_]
}
router_hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "router_hostname", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
number = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "number", null) |
        res := resources_map[_]
        true
     }
}


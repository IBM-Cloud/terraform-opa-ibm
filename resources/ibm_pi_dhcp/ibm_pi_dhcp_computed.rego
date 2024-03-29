package ibmcloud.resources.computed.ibm_pi_dhcp
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_dhcp"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_dhcp").resources[_]
}
network = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
dhcp_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dhcp_id", null) |
        res := resources_map[_]
        true
     }
}
leases = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "leases", null) |
        res := resources_map[_]
        true
     }
}
network_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_name", null) |
        res := resources_map[_]
        true
     }
}


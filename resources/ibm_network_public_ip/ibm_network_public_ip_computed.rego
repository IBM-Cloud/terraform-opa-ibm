package ibmcloud.resources.computed.ibm_network_public_ip
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_network_public_ip"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_network_public_ip").resources[_]
}
ip_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_address", null) |
        res := resources_map[_]
        true
     }
}


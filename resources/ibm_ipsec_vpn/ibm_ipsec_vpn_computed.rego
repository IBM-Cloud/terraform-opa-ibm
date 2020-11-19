package ibmcloud.resources.computed.ibm_ipsec_vpn
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_ipsec_vpn"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_ipsec_vpn").resources[_]
}
internal_peer_ip_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "internal_peer_ip_address", null) |
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


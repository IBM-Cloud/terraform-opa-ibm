package ibmcloud.resources.computed.ibm_is_vpn_gateway_connection
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_is_vpn_gateway_connection"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_vpn_gateway_connection").resources[_]
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
related_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "related_crn", null) |
        res := resources_map[_]
        true
     }
}


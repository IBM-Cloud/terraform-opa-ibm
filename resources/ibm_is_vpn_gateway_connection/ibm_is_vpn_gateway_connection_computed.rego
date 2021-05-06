package ibmcloud.resources.computed.ibm_is_vpn_gateway_connection
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_gateway_connection"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_vpn_gateway_connection").resources[_]
}
related_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "related_crn", null) |
        res := resources_map[_]
        true
     }
}
mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mode", null) |
        res := resources_map[_]
        true
     }
}
authentication_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "authentication_mode", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
gateway_connection = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway_connection", null) |
        res := resources_map[_]
        true
     }
}
resource_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_type", null) |
        res := resources_map[_]
        true
     }
}
tunnels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tunnels", null) |
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


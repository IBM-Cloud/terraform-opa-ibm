package ibmcloud.resources.computed.ibm_pi_vpn_connection
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_vpn_connection"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_vpn_connection").resources[_]
}
dead_peer_detections = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dead_peer_detections", null) |
        res := resources_map[_]
        true
     }
}
local_gateway_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "local_gateway_address", null) |
        res := resources_map[_]
        true
     }
}
gateway_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway_address", null) |
        res := resources_map[_]
        true
     }
}
connection_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connection_id", null) |
        res := resources_map[_]
        true
     }
}
connection_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connection_status", null) |
        res := resources_map[_]
        true
     }
}


package ibmcloud.resources.state.ibm_pi_vpn_connection
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_vpn_connection"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_vpn_connection", "managed").resources[_]
}
pi_peer_gateway_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_peer_gateway_address", null) |
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
local_gateway_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "local_gateway_address", null) |
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
dead_peer_detections = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dead_peer_detections", null) |
        res := resources_map[_]
        true
     }
}
pi_vpn_connection_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_vpn_connection_mode", null) |
        res := resources_map[_]
        true
     }
}
pi_networks = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_networks", null) |
        res := resources_map[_]
        true
     }
}
pi_ike_policy_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_ike_policy_id", null) |
        res := resources_map[_]
        true
     }
}
pi_ipsec_policy_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_ipsec_policy_id", null) |
        res := resources_map[_]
        true
     }
}
pi_peer_subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_peer_subnets", null) |
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
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_vpn_connection_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_vpn_connection_name", null) |
        res := resources_map[_]
        true
     }
}

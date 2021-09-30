package ibmcloud.resources.model.ibm_is_vpn_gateway_connection
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_gateway_connection"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_vpn_gateway_connection").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_vpn_gateway_connection", "managed").resources[_]
}
peer_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "peer_address", null) |
        res := resources_map[_]
        true
     }
}
timeout = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "timeout", null) |
        res := resources_map[_]
        true
     }
}
vpn_gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_gateway", null) |
        res := resources_map[_]
        true
     }
}
ipsec_policy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipsec_policy", null) |
        res := resources_map[_]
        true
     }
}
ike_policy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ike_policy", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
admin_state_up = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "admin_state_up", null) |
        res := resources_map[_]
        true
     }
}
interval = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "interval", null) |
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
related_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "related_crn", null) |
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
preshared_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "preshared_key", null) |
        res := resources_map[_]
        true
     }
}
local_cidrs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "local_cidrs", null) |
        res := resources_map[_]
        true
     }
}
peer_cidrs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "peer_cidrs", null) |
        res := resources_map[_]
        true
     }
}
action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action", null) |
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
mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mode", null) |
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


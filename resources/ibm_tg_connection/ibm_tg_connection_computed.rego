package ibmcloud.resources.computed.ibm_tg_connection
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_tg_connection"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_tg_connection").resources[_]
}
base_connection_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "base_connection_id", null) |
        res := resources_map[_]
        true
     }
}
local_gateway_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "local_gateway_ip", null) |
        res := resources_map[_]
        true
     }
}
local_tunnel_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "local_tunnel_ip", null) |
        res := resources_map[_]
        true
     }
}
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
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
remote_gateway_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "remote_gateway_ip", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
request_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "request_status", null) |
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
network_account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_account_id", null) |
        res := resources_map[_]
        true
     }
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
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
remote_bgp_asn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "remote_bgp_asn", null) |
        res := resources_map[_]
        true
     }
}
remote_tunnel_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "remote_tunnel_ip", null) |
        res := resources_map[_]
        true
     }
}


package ibmcloud.resources.planned.ibm_tg_connection
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_tg_connection"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_tg_connection").resources[_]
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
gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway", null) |
        res := resources_map[_]
        true
     }
}
network_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_type", null) |
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
base_connection_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "base_connection_id", null) |
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
network_account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_account_id", null) |
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


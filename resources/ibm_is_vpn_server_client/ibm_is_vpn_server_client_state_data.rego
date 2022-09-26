package ibmcloud.resources.state.data.ibm_is_vpn_server_client
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_server_client"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpn_server_client", "data").resources[_]
}
vpn_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_server", null) |
        res := resources_map[_]
        true
     }
}
client_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_ip", null) |
        res := resources_map[_]
        true
     }
}
remote_port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "remote_port", null) |
        res := resources_map[_]
        true
     }
}
disconnected_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disconnected_at", null) |
        res := resources_map[_]
        true
     }
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
remote_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "remote_ip", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
identifier = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "identifier", null) |
        res := resources_map[_]
        true
     }
}
common_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "common_name", null) |
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
username = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "username", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_lbaas
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lbaas"
}

resources_map[attr]{
    attr := state.get_resources("ibm_lbaas", "data").resources[_]
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
server_instances_down = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "server_instances_down", null) |
        res := resources_map[_]
        true
     }
}
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
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
ssl_ciphers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ssl_ciphers", null) |
        res := resources_map[_]
        true
     }
}
protocols = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "protocols", null) |
        res := resources_map[_]
        true
     }
}
server_instances_up = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "server_instances_up", null) |
        res := resources_map[_]
        true
     }
}
active_connections = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "active_connections", null) |
        res := resources_map[_]
        true
     }
}
use_system_public_ip_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "use_system_public_ip_pool", null) |
        res := resources_map[_]
        true
     }
}
server_instances = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "server_instances", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
vip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vip", null) |
        res := resources_map[_]
        true
     }
}
health_monitors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_monitors", null) |
        res := resources_map[_]
        true
     }
}

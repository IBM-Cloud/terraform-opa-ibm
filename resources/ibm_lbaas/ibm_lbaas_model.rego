package ibmcloud.resources.model.ibm_lbaas
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lbaas"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_lbaas").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_lbaas", "managed").resources[_]
}
resource_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_status", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
wait_time_minutes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wait_time_minutes", null) |
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
vip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vip", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
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
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
        res := resources_map[_]
        true
     }
}
subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnets", null) |
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
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
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
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}


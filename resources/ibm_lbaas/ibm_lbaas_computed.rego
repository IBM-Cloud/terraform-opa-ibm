package ibmcloud.resources.computed.ibm_lbaas
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lbaas"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_lbaas").resources[_]
}
health_monitors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_monitors", null) |
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
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
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
resource_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_status", null) |
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
use_system_public_ip_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "use_system_public_ip_pool", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}


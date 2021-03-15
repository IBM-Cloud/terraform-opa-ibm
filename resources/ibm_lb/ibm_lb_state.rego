package ibmcloud.resources.state.ibm_lb
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb"
}

resources_map[attr]{
    attr := state.get_resources("ibm_lb", "managed").resources[_]
}
ha_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ha_enabled", null) |
        res := resources_map[_]
        true
     }
}
ip_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_address", null) |
        res := resources_map[_]
        true
     }
}
dedicated = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dedicated", null) |
        res := resources_map[_]
        true
     }
}
ssl_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ssl_enabled", null) |
        res := resources_map[_]
        true
     }
}
ssl_offload = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ssl_offload", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hostname", null) |
        res := resources_map[_]
        true
     }
}
connections = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connections", null) |
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
security_certificate_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_certificate_id", null) |
        res := resources_map[_]
        true
     }
}
subnet_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet_id", null) |
        res := resources_map[_]
        true
     }
}

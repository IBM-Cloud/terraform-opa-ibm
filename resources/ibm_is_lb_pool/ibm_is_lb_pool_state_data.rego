package ibmcloud.resources.state.data.ibm_is_lb_pool
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_pool"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_lb_pool", "data").resources[_]
}
provisioning_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "provisioning_status", null) |
        res := resources_map[_]
        true
     }
}
proxy_protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "proxy_protocol", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
instance_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_group", null) |
        res := resources_map[_]
        true
     }
}
members = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "members", null) |
        res := resources_map[_]
        true
     }
}
protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "protocol", null) |
        res := resources_map[_]
        true
     }
}
session_persistence = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "session_persistence", null) |
        res := resources_map[_]
        true
     }
}
lb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lb", null) |
        res := resources_map[_]
        true
     }
}
algorithm = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "algorithm", null) |
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
health_monitor = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_monitor", null) |
        res := resources_map[_]
        true
     }
}

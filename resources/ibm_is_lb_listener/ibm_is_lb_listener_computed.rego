package ibmcloud.resources.computed.ibm_is_lb_listener
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_listener"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_lb_listener").resources[_]
}
default_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_pool", null) |
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
port_min = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_min", null) |
        res := resources_map[_]
        true
     }
}
port_max = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_max", null) |
        res := resources_map[_]
        true
     }
}
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
listener_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "listener_id", null) |
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
accept_proxy_protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "accept_proxy_protocol", null) |
        res := resources_map[_]
        true
     }
}


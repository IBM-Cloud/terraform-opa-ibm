package ibmcloud.resources.planned.ibm_is_lb_pool
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_pool"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_lb_pool").resources[_]
}
health_timeout = ret {
    ret := {res.address: object.get(res.attributes, "health_timeout", null) |
        res := resources_map[_]
        true
     }
}
health_type = ret {
    ret := {res.address: object.get(res.attributes, "health_type", null) |
        res := resources_map[_]
        true
     }
}
health_monitor_url = ret {
    ret := {res.address: object.get(res.attributes, "health_monitor_url", null) |
        res := resources_map[_]
        true
     }
}
health_monitor_port = ret {
    ret := {res.address: object.get(res.attributes, "health_monitor_port", null) |
        res := resources_map[_]
        true
     }
}
lb = ret {
    ret := {res.address: object.get(res.attributes, "lb", null) |
        res := resources_map[_]
        true
     }
}
health_delay = ret {
    ret := {res.address: object.get(res.attributes, "health_delay", null) |
        res := resources_map[_]
        true
     }
}
session_persistence_cookie_name = ret {
    ret := {res.address: object.get(res.attributes, "session_persistence_cookie_name", null) |
        res := resources_map[_]
        true
     }
}
algorithm = ret {
    ret := {res.address: object.get(res.attributes, "algorithm", null) |
        res := resources_map[_]
        true
     }
}
session_persistence_type = ret {
    ret := {res.address: object.get(res.attributes, "session_persistence_type", null) |
        res := resources_map[_]
        true
     }
}
health_retries = ret {
    ret := {res.address: object.get(res.attributes, "health_retries", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
protocol = ret {
    ret := {res.address: object.get(res.attributes, "protocol", null) |
        res := resources_map[_]
        true
     }
}


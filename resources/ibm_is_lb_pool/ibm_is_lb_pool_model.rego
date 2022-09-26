package ibmcloud.resources.model.ibm_is_lb_pool
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_pool"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_lb_pool").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_lb_pool", "managed").resources[_]
}
health_retries = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_retries", null) |
        res := resources_map[_]
        true
     }
}
health_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_type", null) |
        res := resources_map[_]
        true
     }
}
health_monitor_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_monitor_url", null) |
        res := resources_map[_]
        true
     }
}
session_persistence_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "session_persistence_type", null) |
        res := resources_map[_]
        true
     }
}
session_persistence_http_cookie_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "session_persistence_http_cookie_name", null) |
        res := resources_map[_]
        true
     }
}
provisioning_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "provisioning_status", null) |
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
session_persistence_app_cookie_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "session_persistence_app_cookie_name", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
health_delay = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_delay", null) |
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
protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "protocol", null) |
        res := resources_map[_]
        true
     }
}
health_timeout = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_timeout", null) |
        res := resources_map[_]
        true
     }
}
health_monitor_port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_monitor_port", null) |
        res := resources_map[_]
        true
     }
}
pool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pool_id", null) |
        res := resources_map[_]
        true
     }
}


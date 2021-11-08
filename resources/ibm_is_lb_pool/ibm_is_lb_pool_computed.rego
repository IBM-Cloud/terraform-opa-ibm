package ibmcloud.resources.computed.ibm_is_lb_pool
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_pool"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_lb_pool").resources[_]
}
pool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pool_id", null) |
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
health_monitor_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_monitor_url", null) |
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
proxy_protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "proxy_protocol", null) |
        res := resources_map[_]
        true
     }
}


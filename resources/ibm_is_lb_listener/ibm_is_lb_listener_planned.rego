package ibmcloud.resources.planned.ibm_is_lb_listener
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_listener"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_lb_listener").resources[_]
}
protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "protocol", null) |
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
default_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_pool", null) |
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
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
certificate_instance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate_instance", null) |
        res := resources_map[_]
        true
     }
}
connection_limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connection_limit", null) |
        res := resources_map[_]
        true
     }
}


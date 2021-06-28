package ibmcloud.resources.state.ibm_lb_service_group
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_service_group"
}

resources_map[attr]{
    attr := state.get_resources("ibm_lb_service_group", "managed").resources[_]
}
virtual_server_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "virtual_server_id", null) |
        res := resources_map[_]
        true
     }
}
load_balancer_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "load_balancer_id", null) |
        res := resources_map[_]
        true
     }
}
routing_method = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routing_method", null) |
        res := resources_map[_]
        true
     }
}
routing_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routing_type", null) |
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
service_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_group_id", null) |
        res := resources_map[_]
        true
     }
}
allocation = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allocation", null) |
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
timeout = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "timeout", null) |
        res := resources_map[_]
        true
     }
}

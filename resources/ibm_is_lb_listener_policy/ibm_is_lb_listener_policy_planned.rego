package ibmcloud.resources.planned.ibm_is_lb_listener_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_listener_policy"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_lb_listener_policy").resources[_]
}
action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action", null) |
        res := resources_map[_]
        true
     }
}
priority = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "priority", null) |
        res := resources_map[_]
        true
     }
}
rules = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rules", null) |
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
listener = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "listener", null) |
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
target_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_id", null) |
        res := resources_map[_]
        true
     }
}
target_http_status_code = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_http_status_code", null) |
        res := resources_map[_]
        true
     }
}
target_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_url", null) |
        res := resources_map[_]
        true
     }
}


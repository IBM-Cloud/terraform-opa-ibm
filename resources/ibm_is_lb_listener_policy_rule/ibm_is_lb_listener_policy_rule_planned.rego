package ibmcloud.resources.planned.ibm_is_lb_listener_policy_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_listener_policy_rule"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_lb_listener_policy_rule").resources[_]
}
lb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lb", null) |
        res := resources_map[_]
        true
     }
}
policy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policy", null) |
        res := resources_map[_]
        true
     }
}
value = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "value", null) |
        res := resources_map[_]
        true
     }
}
field = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "field", null) |
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
condition = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "condition", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}


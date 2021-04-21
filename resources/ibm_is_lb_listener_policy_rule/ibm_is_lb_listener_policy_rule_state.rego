package ibmcloud.resources.state.ibm_is_lb_listener_policy_rule
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_listener_policy_rule"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_lb_listener_policy_rule", "managed").resources[_]
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
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
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
rule = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rule", null) |
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
related_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "related_crn", null) |
        res := resources_map[_]
        true
     }
}

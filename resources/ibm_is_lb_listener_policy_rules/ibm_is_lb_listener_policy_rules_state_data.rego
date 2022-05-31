package ibmcloud.resources.state.data.ibm_is_lb_listener_policy_rules
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_listener_policy_rules"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_lb_listener_policy_rules", "data").resources[_]
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
policy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policy", null) |
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

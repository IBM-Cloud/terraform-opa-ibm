package ibmcloud.resources.prior.ibm_is_lb_listener_policy_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_listener_policy_rule"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_lb_listener_policy_rule").resources[_]
}
rule = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rule", null) |
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
listener = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "listener", null) |
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


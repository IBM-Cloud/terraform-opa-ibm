package ibmcloud.resources.prior.ibm_is_lb_listener_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_listener_policy"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_lb_listener_policy").resources[_]
}
policy_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policy_id", null) |
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


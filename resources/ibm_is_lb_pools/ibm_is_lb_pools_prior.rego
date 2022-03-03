package ibmcloud.resources.prior.ibm_is_lb_pools
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_pools"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_lb_pools").resources[_]
}
lb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lb", null) |
        res := resources_map[_]
        true
     }
}


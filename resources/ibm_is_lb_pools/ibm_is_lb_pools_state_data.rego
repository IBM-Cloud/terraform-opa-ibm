package ibmcloud.resources.state.data.ibm_is_lb_pools
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_pools"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_lb_pools", "data").resources[_]
}
lb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lb", null) |
        res := resources_map[_]
        true
     }
}
pools = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pools", null) |
        res := resources_map[_]
        true
     }
}

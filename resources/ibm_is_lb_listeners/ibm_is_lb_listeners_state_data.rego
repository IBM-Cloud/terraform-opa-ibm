package ibmcloud.resources.state.data.ibm_is_lb_listeners
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_listeners"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_lb_listeners", "data").resources[_]
}
listeners = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "listeners", null) |
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

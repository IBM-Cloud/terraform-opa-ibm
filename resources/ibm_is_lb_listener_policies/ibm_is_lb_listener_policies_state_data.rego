package ibmcloud.resources.state.data.ibm_is_lb_listener_policies
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_listener_policies"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_lb_listener_policies", "data").resources[_]
}
policies = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policies", null) |
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

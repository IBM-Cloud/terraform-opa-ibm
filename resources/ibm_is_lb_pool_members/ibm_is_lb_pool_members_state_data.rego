package ibmcloud.resources.state.data.ibm_is_lb_pool_members
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_pool_members"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_lb_pool_members", "data").resources[_]
}
lb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lb", null) |
        res := resources_map[_]
        true
     }
}
pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pool", null) |
        res := resources_map[_]
        true
     }
}
members = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "members", null) |
        res := resources_map[_]
        true
     }
}

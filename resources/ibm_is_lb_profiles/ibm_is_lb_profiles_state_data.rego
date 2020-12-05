package ibmcloud.resources.state.data.ibm_is_lb_profiles
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_profiles"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_lb_profiles", "data").resources[_]
}
lb_profiles = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lb_profiles", null) |
        res := resources_map[_]
        true
     }
}

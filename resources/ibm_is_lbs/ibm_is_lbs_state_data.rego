package ibmcloud.resources.state.data.ibm_is_lbs
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lbs"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_lbs", "data").resources[_]
}
load_balancers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "load_balancers", null) |
        res := resources_map[_]
        true
     }
}

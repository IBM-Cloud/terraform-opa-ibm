package ibmcloud.resources.state.data.ibm_tg_locations
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_tg_locations"
}

resources_map[attr]{
    attr := state.get_resources("ibm_tg_locations", "data").resources[_]
}
locations = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locations", null) |
        res := resources_map[_]
        true
     }
}

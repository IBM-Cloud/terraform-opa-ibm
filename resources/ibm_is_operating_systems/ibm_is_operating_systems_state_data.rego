package ibmcloud.resources.state.data.ibm_is_operating_systems
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_operating_systems"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_operating_systems", "data").resources[_]
}
operating_systems = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "operating_systems", null) |
        res := resources_map[_]
        true
     }
}

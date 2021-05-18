package ibmcloud.resources.state.data.ibm_is_volume_profile
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_volume_profile"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_volume_profile", "data").resources[_]
}
family = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "family", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

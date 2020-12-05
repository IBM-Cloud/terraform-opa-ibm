package ibmcloud.resources.state.data.ibm_is_instance_profiles
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_profiles"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_instance_profiles", "data").resources[_]
}
profiles = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profiles", null) |
        res := resources_map[_]
        true
     }
}

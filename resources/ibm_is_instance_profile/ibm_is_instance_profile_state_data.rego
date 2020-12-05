package ibmcloud.resources.state.data.ibm_is_instance_profile
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_profile"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_instance_profile", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
family = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "family", null) |
        res := resources_map[_]
        true
     }
}

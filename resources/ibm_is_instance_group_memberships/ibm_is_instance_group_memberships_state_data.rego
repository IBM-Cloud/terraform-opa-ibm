package ibmcloud.resources.state.data.ibm_is_instance_group_memberships
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group_memberships"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_instance_group_memberships", "data").resources[_]
}
instance_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_group", null) |
        res := resources_map[_]
        true
     }
}
memberships = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "memberships", null) |
        res := resources_map[_]
        true
     }
}

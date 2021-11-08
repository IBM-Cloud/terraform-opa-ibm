package ibmcloud.resources.state.data.ibm_is_placement_groups
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_placement_groups"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_placement_groups", "data").resources[_]
}
total_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_count", null) |
        res := resources_map[_]
        true
     }
}
placement_groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "placement_groups", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_is_regions
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_regions"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_regions", "data").resources[_]
}
regions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "regions", null) |
        res := resources_map[_]
        true
     }
}

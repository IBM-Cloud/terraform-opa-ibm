package ibmcloud.resources.state.data.ibm_dl_locations
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dl_locations"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dl_locations", "data").resources[_]
}
offering_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_type", null) |
        res := resources_map[_]
        true
     }
}
locations = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locations", null) |
        res := resources_map[_]
        true
     }
}

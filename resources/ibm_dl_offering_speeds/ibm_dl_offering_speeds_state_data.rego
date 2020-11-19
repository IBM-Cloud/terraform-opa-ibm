package ibmcloud.resources.state.data.ibm_dl_offering_speeds
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_dl_offering_speeds"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dl_offering_speeds", "data").resources[_]
}
offering_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_type", null) |
        res := resources_map[_]
        true
     }
}
offering_speeds = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_speeds", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_dl_routers
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dl_routers"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dl_routers", "data").resources[_]
}
offering_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_type", null) |
        res := resources_map[_]
        true
     }
}
location_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location_name", null) |
        res := resources_map[_]
        true
     }
}
cross_connect_routers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cross_connect_routers", null) |
        res := resources_map[_]
        true
     }
}

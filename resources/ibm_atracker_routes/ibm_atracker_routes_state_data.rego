package ibmcloud.resources.state.data.ibm_atracker_routes
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_routes"
}

resources_map[attr]{
    attr := state.get_resources("ibm_atracker_routes", "data").resources[_]
}
routes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routes", null) |
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

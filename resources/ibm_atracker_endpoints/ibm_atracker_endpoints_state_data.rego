package ibmcloud.resources.state.data.ibm_atracker_endpoints
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_endpoints"
}

resources_map[attr]{
    attr := state.get_resources("ibm_atracker_endpoints", "data").resources[_]
}
api_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "api_endpoint", null) |
        res := resources_map[_]
        true
     }
}

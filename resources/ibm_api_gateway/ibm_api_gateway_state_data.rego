package ibmcloud.resources.state.data.ibm_api_gateway
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_api_gateway"
}

resources_map[attr]{
    attr := state.get_resources("ibm_api_gateway", "data").resources[_]
}
service_instance_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_instance_crn", null) |
        res := resources_map[_]
        true
     }
}
endpoints = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoints", null) |
        res := resources_map[_]
        true
     }
}

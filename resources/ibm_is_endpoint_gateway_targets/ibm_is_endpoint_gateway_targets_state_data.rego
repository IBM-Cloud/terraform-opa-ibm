package ibmcloud.resources.state.data.ibm_is_endpoint_gateway_targets
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_endpoint_gateway_targets"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_endpoint_gateway_targets", "data").resources[_]
}
resources = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resources", null) |
        res := resources_map[_]
        true
     }
}

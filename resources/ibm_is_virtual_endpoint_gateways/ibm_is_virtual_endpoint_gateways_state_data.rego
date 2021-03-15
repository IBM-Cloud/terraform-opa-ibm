package ibmcloud.resources.state.data.ibm_is_virtual_endpoint_gateways
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_virtual_endpoint_gateways"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_virtual_endpoint_gateways", "data").resources[_]
}
virtual_endpoint_gateways = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "virtual_endpoint_gateways", null) |
        res := resources_map[_]
        true
     }
}

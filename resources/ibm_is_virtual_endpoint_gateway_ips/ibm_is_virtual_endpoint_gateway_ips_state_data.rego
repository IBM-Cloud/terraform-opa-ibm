package ibmcloud.resources.state.data.ibm_is_virtual_endpoint_gateway_ips
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_virtual_endpoint_gateway_ips"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_virtual_endpoint_gateway_ips", "data").resources[_]
}
gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway", null) |
        res := resources_map[_]
        true
     }
}
ips = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ips", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_is_vpcs
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpcs"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpcs", "data").resources[_]
}
vpcs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpcs", null) |
        res := resources_map[_]
        true
     }
}

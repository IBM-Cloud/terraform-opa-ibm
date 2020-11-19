package ibmcloud.resources.state.data.ibm_is_subnets
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_is_subnets"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_subnets", "data").resources[_]
}
subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnets", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_dns_custom_resolvers
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_custom_resolvers"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dns_custom_resolvers", "data").resources[_]
}
custom_resolvers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "custom_resolvers", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}

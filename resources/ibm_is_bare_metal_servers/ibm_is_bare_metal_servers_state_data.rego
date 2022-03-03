package ibmcloud.resources.state.data.ibm_is_bare_metal_servers
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_servers"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_bare_metal_servers", "data").resources[_]
}
servers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "servers", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_is_network_acls
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_network_acls"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_network_acls", "data").resources[_]
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
network_acls = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_acls", null) |
        res := resources_map[_]
        true
     }
}

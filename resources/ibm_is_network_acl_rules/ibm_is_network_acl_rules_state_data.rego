package ibmcloud.resources.state.data.ibm_is_network_acl_rules
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_network_acl_rules"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_network_acl_rules", "data").resources[_]
}
network_acl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_acl", null) |
        res := resources_map[_]
        true
     }
}
rules = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rules", null) |
        res := resources_map[_]
        true
     }
}

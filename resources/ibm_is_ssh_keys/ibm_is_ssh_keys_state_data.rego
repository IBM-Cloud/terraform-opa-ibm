package ibmcloud.resources.state.data.ibm_is_ssh_keys
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_ssh_keys"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_ssh_keys", "data").resources[_]
}
keys = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "keys", null) |
        res := resources_map[_]
        true
     }
}

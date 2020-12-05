package ibmcloud.resources.state.data.ibm_kp_key
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_kp_key"
}

resources_map[attr]{
    attr := state.get_resources("ibm_kp_key", "data").resources[_]
}
key_protect_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_protect_id", null) |
        res := resources_map[_]
        true
     }
}
key_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_name", null) |
        res := resources_map[_]
        true
     }
}
keys = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "keys", null) |
        res := resources_map[_]
        true
     }
}

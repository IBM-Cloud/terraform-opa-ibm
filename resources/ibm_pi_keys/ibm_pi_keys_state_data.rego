package ibmcloud.resources.state.data.ibm_pi_keys
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_keys"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_keys", "data").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
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

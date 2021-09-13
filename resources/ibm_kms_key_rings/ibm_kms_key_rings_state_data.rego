package ibmcloud.resources.state.data.ibm_kms_key_rings
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_kms_key_rings"
}

resources_map[attr]{
    attr := state.get_resources("ibm_kms_key_rings", "data").resources[_]
}
endpoint_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_type", null) |
        res := resources_map[_]
        true
     }
}
key_rings = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_rings", null) |
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

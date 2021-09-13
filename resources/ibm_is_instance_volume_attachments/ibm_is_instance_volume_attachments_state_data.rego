package ibmcloud.resources.state.data.ibm_is_instance_volume_attachments
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_volume_attachments"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_instance_volume_attachments", "data").resources[_]
}
volume_attachments = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_attachments", null) |
        res := resources_map[_]
        true
     }
}
instance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance", null) |
        res := resources_map[_]
        true
     }
}

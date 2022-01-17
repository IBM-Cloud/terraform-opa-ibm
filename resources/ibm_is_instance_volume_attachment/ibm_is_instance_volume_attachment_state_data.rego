package ibmcloud.resources.state.data.ibm_is_instance_volume_attachment
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_volume_attachment"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_instance_volume_attachment", "data").resources[_]
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
volume_attachment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_attachment_id", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
volume_reference = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_reference", null) |
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
device = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "device", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
delete_volume_on_instance_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "delete_volume_on_instance_delete", null) |
        res := resources_map[_]
        true
     }
}

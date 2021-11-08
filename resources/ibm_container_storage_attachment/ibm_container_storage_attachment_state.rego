package ibmcloud.resources.state.ibm_container_storage_attachment
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_storage_attachment"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_storage_attachment", "managed").resources[_]
}
volume = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume", null) |
        res := resources_map[_]
        true
     }
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
worker = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker", null) |
        res := resources_map[_]
        true
     }
}
volume_attachment_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_attachment_name", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
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
volume_attachment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_attachment_id", null) |
        res := resources_map[_]
        true
     }
}
volume_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_type", null) |
        res := resources_map[_]
        true
     }
}

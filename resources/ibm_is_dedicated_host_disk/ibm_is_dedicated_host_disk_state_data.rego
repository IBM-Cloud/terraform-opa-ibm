package ibmcloud.resources.state.data.ibm_is_dedicated_host_disk
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_dedicated_host_disk"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_dedicated_host_disk", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
provisionable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "provisionable", null) |
        res := resources_map[_]
        true
     }
}
size = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "size", null) |
        res := resources_map[_]
        true
     }
}
supported_instance_interface_types = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "supported_instance_interface_types", null) |
        res := resources_map[_]
        true
     }
}
disk = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk", null) |
        res := resources_map[_]
        true
     }
}
available = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "available", null) |
        res := resources_map[_]
        true
     }
}
interface_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "interface_type", null) |
        res := resources_map[_]
        true
     }
}
instance_disks = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_disks", null) |
        res := resources_map[_]
        true
     }
}
lifecycle_state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lifecycle_state", null) |
        res := resources_map[_]
        true
     }
}
resource_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_type", null) |
        res := resources_map[_]
        true
     }
}
dedicated_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dedicated_host", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_is_snapshot
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_snapshot"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_snapshot", "data").resources[_]
}
size = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "size", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
encryption = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encryption", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
minimum_capacity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "minimum_capacity", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
source_image = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_image", null) |
        res := resources_map[_]
        true
     }
}
bootable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bootable", null) |
        res := resources_map[_]
        true
     }
}
identifier = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "identifier", null) |
        res := resources_map[_]
        true
     }
}
source_volume = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_volume", null) |
        res := resources_map[_]
        true
     }
}
operating_system = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "operating_system", null) |
        res := resources_map[_]
        true
     }
}

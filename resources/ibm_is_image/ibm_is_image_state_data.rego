package ibmcloud.resources.state.data.ibm_is_image
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_image"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_image", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
architecture = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "architecture", null) |
        res := resources_map[_]
        true
     }
}
checksum = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "checksum", null) |
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
visibility = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "visibility", null) |
        res := resources_map[_]
        true
     }
}
os = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "os", null) |
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
encryption_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encryption_key", null) |
        res := resources_map[_]
        true
     }
}

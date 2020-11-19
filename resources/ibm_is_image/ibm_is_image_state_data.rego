package ibmcloud.resources.state.data.ibm_is_image
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
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
visibility = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "visibility", null) |
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
os = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "os", null) |
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
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}

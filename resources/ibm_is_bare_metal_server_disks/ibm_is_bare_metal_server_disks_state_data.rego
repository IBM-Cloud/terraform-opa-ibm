package ibmcloud.resources.state.data.ibm_is_bare_metal_server_disks
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_disks"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_bare_metal_server_disks", "data").resources[_]
}
bare_metal_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bare_metal_server", null) |
        res := resources_map[_]
        true
     }
}
disks = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disks", null) |
        res := resources_map[_]
        true
     }
}

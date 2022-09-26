package ibmcloud.resources.state.data.ibm_is_bare_metal_server_profile
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_profile"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_bare_metal_server_profile", "data").resources[_]
}
cpu_core_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cpu_core_count", null) |
        res := resources_map[_]
        true
     }
}
memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "memory", null) |
        res := resources_map[_]
        true
     }
}
os_architecture = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "os_architecture", null) |
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
bandwidth = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bandwidth", null) |
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
cpu_architecture = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cpu_architecture", null) |
        res := resources_map[_]
        true
     }
}
cpu_socket_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cpu_socket_count", null) |
        res := resources_map[_]
        true
     }
}
supported_trusted_platform_module_modes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "supported_trusted_platform_module_modes", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
family = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "family", null) |
        res := resources_map[_]
        true
     }
}

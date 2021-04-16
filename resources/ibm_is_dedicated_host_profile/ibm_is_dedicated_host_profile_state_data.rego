package ibmcloud.resources.state.data.ibm_is_dedicated_host_profile
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_dedicated_host_profile"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_dedicated_host_profile", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
socket_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "socket_count", null) |
        res := resources_map[_]
        true
     }
}
supported_instance_profiles = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "supported_instance_profiles", null) |
        res := resources_map[_]
        true
     }
}
vcpu_architecture = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vcpu_architecture", null) |
        res := resources_map[_]
        true
     }
}
vcpu_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vcpu_count", null) |
        res := resources_map[_]
        true
     }
}
class = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "class", null) |
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
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}

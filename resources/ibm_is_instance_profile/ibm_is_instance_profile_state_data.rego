package ibmcloud.resources.state.data.ibm_is_instance_profile
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_profile"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_instance_profile", "data").resources[_]
}
family = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "family", null) |
        res := resources_map[_]
        true
     }
}
architecture_values = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "architecture_values", null) |
        res := resources_map[_]
        true
     }
}
gpu_model = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gpu_model", null) |
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
total_volume_bandwidth = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_volume_bandwidth", null) |
        res := resources_map[_]
        true
     }
}
architecture_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "architecture_type", null) |
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
gpu_memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gpu_memory", null) |
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
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
gpu_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gpu_count", null) |
        res := resources_map[_]
        true
     }
}
gpu_manufacturer = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gpu_manufacturer", null) |
        res := resources_map[_]
        true
     }
}
port_speed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_speed", null) |
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

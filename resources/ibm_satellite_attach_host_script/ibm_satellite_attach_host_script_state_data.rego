package ibmcloud.resources.state.data.ibm_satellite_attach_host_script
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_attach_host_script"
}

resources_map[attr]{
    attr := state.get_resources("ibm_satellite_attach_host_script", "data").resources[_]
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
host_provider = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_provider", null) |
        res := resources_map[_]
        true
     }
}
script_dir = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "script_dir", null) |
        res := resources_map[_]
        true
     }
}
script_path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "script_path", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
coreos_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "coreos_host", null) |
        res := resources_map[_]
        true
     }
}
labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "labels", null) |
        res := resources_map[_]
        true
     }
}
host_script = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_script", null) |
        res := resources_map[_]
        true
     }
}
custom_script = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "custom_script", null) |
        res := resources_map[_]
        true
     }
}

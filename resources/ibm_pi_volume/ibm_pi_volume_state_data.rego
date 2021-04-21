package ibmcloud.resources.state.data.ibm_pi_volume
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_volume"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_volume", "data").resources[_]
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
        res := resources_map[_]
        true
     }
}
wwn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wwn", null) |
        res := resources_map[_]
        true
     }
}
disk_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk_type", null) |
        res := resources_map[_]
        true
     }
}
pi_volume_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_volume_name", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
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
shareable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "shareable", null) |
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
bootable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bootable", null) |
        res := resources_map[_]
        true
     }
}
creation_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "creation_date", null) |
        res := resources_map[_]
        true
     }
}

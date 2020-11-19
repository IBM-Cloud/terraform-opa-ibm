package ibmcloud.resources.state.data.ibm_pi_instance_volumes
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_pi_instance_volumes"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_instance_volumes", "data").resources[_]
}
pi_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_instance_name", null) |
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
boot_volume_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "boot_volume_id", null) |
        res := resources_map[_]
        true
     }
}
instance_volumes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_volumes", null) |
        res := resources_map[_]
        true
     }
}

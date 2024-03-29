package ibmcloud.resources.state.ibm_pi_volume_attach
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_volume_attach"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_volume_attach", "managed").resources[_]
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
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
pi_volume_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_volume_id", null) |
        res := resources_map[_]
        true
     }
}
pi_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_instance_id", null) |
        res := resources_map[_]
        true
     }
}

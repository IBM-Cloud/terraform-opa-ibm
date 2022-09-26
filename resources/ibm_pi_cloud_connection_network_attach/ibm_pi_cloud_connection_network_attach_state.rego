package ibmcloud.resources.state.ibm_pi_cloud_connection_network_attach
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_cloud_connection_network_attach"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_cloud_connection_network_attach", "managed").resources[_]
}
pi_network_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_network_id", null) |
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
pi_cloud_connection_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_connection_id", null) |
        res := resources_map[_]
        true
     }
}

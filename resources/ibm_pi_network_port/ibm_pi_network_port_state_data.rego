package ibmcloud.resources.state.data.ibm_pi_network_port
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_network_port"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_network_port", "data").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
network_ports = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_ports", null) |
        res := resources_map[_]
        true
     }
}
pi_network_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_network_name", null) |
        res := resources_map[_]
        true
     }
}

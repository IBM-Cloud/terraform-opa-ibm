package ibmcloud.resources.state.data.ibm_pi_cloud_connections
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_cloud_connections"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_cloud_connections", "data").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
connections = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connections", null) |
        res := resources_map[_]
        true
     }
}

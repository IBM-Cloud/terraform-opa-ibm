package ibmcloud.resources.state.data.ibm_is_instance_network_interfaces
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_network_interfaces"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_instance_network_interfaces", "data").resources[_]
}
instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_name", null) |
        res := resources_map[_]
        true
     }
}
network_interfaces = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_interfaces", null) |
        res := resources_map[_]
        true
     }
}
total_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_count", null) |
        res := resources_map[_]
        true
     }
}

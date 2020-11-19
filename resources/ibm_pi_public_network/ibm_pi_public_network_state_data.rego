package ibmcloud.resources.state.data.ibm_pi_public_network
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_pi_public_network"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_public_network", "data").resources[_]
}
pi_network_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_network_name", null) |
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
network_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_id", null) |
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
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vlan_id", null) |
        res := resources_map[_]
        true
     }
}

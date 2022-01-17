package ibmcloud.resources.state.ibm_pi_network
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_network"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_network", "managed").resources[_]
}
vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vlan_id", null) |
        res := resources_map[_]
        true
     }
}
pi_network_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_network_type", null) |
        res := resources_map[_]
        true
     }
}
pi_dns = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_dns", null) |
        res := resources_map[_]
        true
     }
}
pi_cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cidr", null) |
        res := resources_map[_]
        true
     }
}
pi_gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_gateway", null) |
        res := resources_map[_]
        true
     }
}
pi_network_jumbo = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_network_jumbo", null) |
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

package ibmcloud.resources.state.data.ibm_pi_network
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_network"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_network", "data").resources[_]
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway", null) |
        res := resources_map[_]
        true
     }
}
used_ip_percent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "used_ip_percent", null) |
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
used_ip_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "used_ip_count", null) |
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
cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cidr", null) |
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
available_ip_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "available_ip_count", null) |
        res := resources_map[_]
        true
     }
}

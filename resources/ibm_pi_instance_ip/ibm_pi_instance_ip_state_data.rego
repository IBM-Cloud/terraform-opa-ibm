package ibmcloud.resources.state.data.ibm_pi_instance_ip
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_instance_ip"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_instance_ip", "data").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
macaddress = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "macaddress", null) |
        res := resources_map[_]
        true
     }
}
external_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "external_ip", null) |
        res := resources_map[_]
        true
     }
}
ipoctet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipoctet", null) |
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
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
pi_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_instance_name", null) |
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
ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip", null) |
        res := resources_map[_]
        true
     }
}

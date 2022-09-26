package ibmcloud.resources.state.ibm_pi_network_port_attach
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_network_port_attach"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_network_port_attach", "managed").resources[_]
}
network_port_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_port_id", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
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
pi_network_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_network_name", null) |
        res := resources_map[_]
        true
     }
}
pi_network_port_description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_network_port_description", null) |
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
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_network_port_ipaddress = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_network_port_ipaddress", null) |
        res := resources_map[_]
        true
     }
}
port_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_id", null) |
        res := resources_map[_]
        true
     }
}
public_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ip", null) |
        res := resources_map[_]
        true
     }
}

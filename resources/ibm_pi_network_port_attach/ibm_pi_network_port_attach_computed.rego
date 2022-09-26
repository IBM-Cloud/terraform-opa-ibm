package ibmcloud.resources.computed.ibm_pi_network_port_attach
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_network_port_attach"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_network_port_attach").resources[_]
}
port_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_id", null) |
        res := resources_map[_]
        true
     }
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
public_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ip", null) |
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
macaddress = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "macaddress", null) |
        res := resources_map[_]
        true
     }
}


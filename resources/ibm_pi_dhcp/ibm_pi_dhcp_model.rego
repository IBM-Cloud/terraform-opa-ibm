package ibmcloud.resources.model.ibm_pi_dhcp
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_dhcp"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_pi_dhcp").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_pi_dhcp", "managed").resources[_]
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
dhcp_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dhcp_id", null) |
        res := resources_map[_]
        true
     }
}
network_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_name", null) |
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
pi_cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cidr", null) |
        res := resources_map[_]
        true
     }
}
pi_dns_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_dns_server", null) |
        res := resources_map[_]
        true
     }
}
pi_dhcp_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_dhcp_name", null) |
        res := resources_map[_]
        true
     }
}
leases = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "leases", null) |
        res := resources_map[_]
        true
     }
}
network = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network", null) |
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


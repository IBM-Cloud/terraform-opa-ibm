package ibmcloud.resources.state.ibm_pi_cloud_connection
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_cloud_connection"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_cloud_connection", "managed").resources[_]
}
pi_cloud_connection_classic_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_connection_classic_enabled", null) |
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
ibm_ip_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_ip_address", null) |
        res := resources_map[_]
        true
     }
}
user_ip_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_ip_address", null) |
        res := resources_map[_]
        true
     }
}
gre_source_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gre_source_address", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_connection_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_connection_name", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_connection_networks = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_connection_networks", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_connection_gre_cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_connection_gre_cidr", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_connection_gre_destination_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_connection_gre_destination_address", null) |
        res := resources_map[_]
        true
     }
}
cloud_connection_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cloud_connection_id", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_connection_speed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_connection_speed", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_connection_global_routing = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_connection_global_routing", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_connection_vpc_crns = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_connection_vpc_crns", null) |
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
pi_cloud_connection_metered = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_connection_metered", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_connection_vpc_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_connection_vpc_enabled", null) |
        res := resources_map[_]
        true
     }
}
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.computed.ibm_pi_cloud_connection
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_cloud_connection"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_cloud_connection").resources[_]
}
connection_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connection_mode", null) |
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
cloud_connection_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cloud_connection_id", null) |
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
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
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


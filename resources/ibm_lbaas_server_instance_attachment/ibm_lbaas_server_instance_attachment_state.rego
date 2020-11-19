package ibmcloud.resources.state.ibm_lbaas_server_instance_attachment
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_lbaas_server_instance_attachment"
}

resources_map[attr]{
    attr := state.get_resources("ibm_lbaas_server_instance_attachment", "managed").resources[_]
}
lbaas_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lbaas_id", null) |
        res := resources_map[_]
        true
     }
}
uuid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uuid", null) |
        res := resources_map[_]
        true
     }
}
private_ip_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_ip_address", null) |
        res := resources_map[_]
        true
     }
}
weight = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "weight", null) |
        res := resources_map[_]
        true
     }
}

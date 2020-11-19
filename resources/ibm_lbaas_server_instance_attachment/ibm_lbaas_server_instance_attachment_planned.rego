package ibmcloud.resources.planned.ibm_lbaas_server_instance_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_lbaas_server_instance_attachment"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_lbaas_server_instance_attachment").resources[_]
}
lbaas_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lbaas_id", null) |
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


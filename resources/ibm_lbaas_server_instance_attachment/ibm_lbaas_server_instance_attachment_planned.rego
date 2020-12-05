package ibmcloud.resources.planned.ibm_lbaas_server_instance_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lbaas_server_instance_attachment"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_lbaas_server_instance_attachment").resources[_]
}
private_ip_address = ret {
    ret := {res.address: object.get(res.attributes, "private_ip_address", null) |
        res := resources_map[_]
        true
     }
}
weight = ret {
    ret := {res.address: object.get(res.attributes, "weight", null) |
        res := resources_map[_]
        true
     }
}
lbaas_id = ret {
    ret := {res.address: object.get(res.attributes, "lbaas_id", null) |
        res := resources_map[_]
        true
     }
}


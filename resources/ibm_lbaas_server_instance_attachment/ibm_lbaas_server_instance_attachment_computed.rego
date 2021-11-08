package ibmcloud.resources.computed.ibm_lbaas_server_instance_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lbaas_server_instance_attachment"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_lbaas_server_instance_attachment").resources[_]
}
uuid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uuid", null) |
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


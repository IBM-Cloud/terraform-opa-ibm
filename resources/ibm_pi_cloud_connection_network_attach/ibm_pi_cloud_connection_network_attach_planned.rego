package ibmcloud.resources.planned.ibm_pi_cloud_connection_network_attach
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_cloud_connection_network_attach"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_pi_cloud_connection_network_attach").resources[_]
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
pi_network_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_network_id", null) |
        res := resources_map[_]
        true
     }
}


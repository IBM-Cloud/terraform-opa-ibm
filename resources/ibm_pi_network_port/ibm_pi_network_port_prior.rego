package ibmcloud.resources.prior.ibm_pi_network_port
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_pi_network_port"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_pi_network_port").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
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


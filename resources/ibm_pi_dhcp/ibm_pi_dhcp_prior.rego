package ibmcloud.resources.prior.ibm_pi_dhcp
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_dhcp"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_pi_dhcp").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_dhcp_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_dhcp_id", null) |
        res := resources_map[_]
        true
     }
}


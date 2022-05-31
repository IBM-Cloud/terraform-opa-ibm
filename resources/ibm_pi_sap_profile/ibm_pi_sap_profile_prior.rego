package ibmcloud.resources.prior.ibm_pi_sap_profile
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_sap_profile"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_pi_sap_profile").resources[_]
}
pi_sap_profile_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_sap_profile_id", null) |
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


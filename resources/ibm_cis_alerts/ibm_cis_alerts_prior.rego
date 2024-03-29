package ibmcloud.resources.prior.ibm_cis_alerts
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_alerts"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cis_alerts").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}


package ibmcloud.resources.prior.ibm_scc_account_location
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_account_location"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_scc_account_location").resources[_]
}
location_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location_id", null) |
        res := resources_map[_]
        true
     }
}


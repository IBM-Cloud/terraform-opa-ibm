package ibmcloud.resources.prior.ibm_scc_si_occurrence
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_si_occurrence"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_scc_si_occurrence").resources[_]
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}
occurrence_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "occurrence_id", null) |
        res := resources_map[_]
        true
     }
}
provider_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "provider_id", null) |
        res := resources_map[_]
        true
     }
}


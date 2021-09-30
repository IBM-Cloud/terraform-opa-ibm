package ibmcloud.resources.prior.ibm_scc_si_providers
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_si_providers"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_scc_si_providers").resources[_]
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}
limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "limit", null) |
        res := resources_map[_]
        true
     }
}
skip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "skip", null) |
        res := resources_map[_]
        true
     }
}


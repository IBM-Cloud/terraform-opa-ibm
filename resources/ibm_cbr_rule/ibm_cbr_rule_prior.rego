package ibmcloud.resources.prior.ibm_cbr_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cbr_rule"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cbr_rule").resources[_]
}
rule_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rule_id", null) |
        res := resources_map[_]
        true
     }
}


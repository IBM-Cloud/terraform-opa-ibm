package ibmcloud.resources.computed.ibm_cis_rate_limit
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_rate_limit"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_rate_limit").resources[_]
}
rule_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rule_id", null) |
        res := resources_map[_]
        true
     }
}
match = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "match", null) |
        res := resources_map[_]
        true
     }
}


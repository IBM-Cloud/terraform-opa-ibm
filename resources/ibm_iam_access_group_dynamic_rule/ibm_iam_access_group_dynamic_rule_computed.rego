package ibmcloud.resources.computed.ibm_iam_access_group_dynamic_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_iam_access_group_dynamic_rule"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_access_group_dynamic_rule").resources[_]
}
rule_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rule_id", null) |
        res := resources_map[_]
        true
     }
}


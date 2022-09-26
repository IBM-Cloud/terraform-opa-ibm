package ibmcloud.resources.computed.ibm_iam_trusted_profile_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profile_policy"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_trusted_profile_policy").resources[_]
}
transaction_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "transaction_id", null) |
        res := resources_map[_]
        true
     }
}


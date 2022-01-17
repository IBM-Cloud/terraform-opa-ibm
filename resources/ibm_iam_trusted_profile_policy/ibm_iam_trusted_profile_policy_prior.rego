package ibmcloud.resources.prior.ibm_iam_trusted_profile_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profile_policy"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_iam_trusted_profile_policy").resources[_]
}
sort = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sort", null) |
        res := resources_map[_]
        true
     }
}
profile_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile_id", null) |
        res := resources_map[_]
        true
     }
}
iam_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_id", null) |
        res := resources_map[_]
        true
     }
}


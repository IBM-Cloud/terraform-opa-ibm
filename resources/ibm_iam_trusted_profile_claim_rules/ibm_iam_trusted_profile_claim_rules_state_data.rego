package ibmcloud.resources.state.data.ibm_iam_trusted_profile_claim_rules
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profile_claim_rules"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_trusted_profile_claim_rules", "data").resources[_]
}
profile_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile_id", null) |
        res := resources_map[_]
        true
     }
}
rules = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rules", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.prior.ibm_iam_trusted_profile_links
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profile_links"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_iam_trusted_profile_links").resources[_]
}
profile_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile_id", null) |
        res := resources_map[_]
        true
     }
}


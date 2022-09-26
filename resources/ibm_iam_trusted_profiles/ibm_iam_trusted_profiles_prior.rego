package ibmcloud.resources.prior.ibm_iam_trusted_profiles
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profiles"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_iam_trusted_profiles").resources[_]
}
include_history = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "include_history", null) |
        res := resources_map[_]
        true
     }
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}


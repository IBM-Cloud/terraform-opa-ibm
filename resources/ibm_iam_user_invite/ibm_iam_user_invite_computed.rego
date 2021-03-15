package ibmcloud.resources.computed.ibm_iam_user_invite
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_user_invite"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_user_invite").resources[_]
}
number_of_invited_users = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "number_of_invited_users", null) |
        res := resources_map[_]
        true
     }
}
invited_users = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "invited_users", null) |
        res := resources_map[_]
        true
     }
}


package ibmcloud.resources.after.ibm_iam_user_invite
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_user_invite"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_iam_user_invite").resources[_]
}
users = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "users", null) |
        res := resources_map[_]
        true
     }
}
access_groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "access_groups", null) |
        res := resources_map[_]
        true
     }
}
iam_policy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_policy", null) |
        res := resources_map[_]
        true
     }
}
classic_infra_roles = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "classic_infra_roles", null) |
        res := resources_map[_]
        true
     }
}
cloud_foundry_roles = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cloud_foundry_roles", null) |
        res := resources_map[_]
        true
     }
}


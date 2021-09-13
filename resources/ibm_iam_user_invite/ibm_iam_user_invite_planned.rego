package ibmcloud.resources.planned.ibm_iam_user_invite
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_user_invite"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_iam_user_invite").resources[_]
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


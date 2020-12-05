package ibmcloud.resources.after.ibm_iam_access_group_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_access_group_policy"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_iam_access_group_policy").resources[_]
}
access_group_id = ret {
    ret := {res.address: object.get(res.attributes, "access_group_id", null) |
        res := resources_map[_]
        true
     }
}
roles = ret {
    ret := {res.address: object.get(res.attributes, "roles", null) |
        res := resources_map[_]
        true
     }
}
resources = ret {
    ret := {res.address: object.get(res.attributes, "resources", null) |
        res := resources_map[_]
        true
     }
}
account_management = ret {
    ret := {res.address: object.get(res.attributes, "account_management", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}


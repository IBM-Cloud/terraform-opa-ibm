package ibmcloud.resources.after.ibm_iam_user_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_user_policy"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_iam_user_policy").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
ibm_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_id", null) |
        res := resources_map[_]
        true
     }
}
roles = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "roles", null) |
        res := resources_map[_]
        true
     }
}
resources = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resources", null) |
        res := resources_map[_]
        true
     }
}
resource_attributes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_attributes", null) |
        res := resources_map[_]
        true
     }
}
account_management = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_management", null) |
        res := resources_map[_]
        true
     }
}


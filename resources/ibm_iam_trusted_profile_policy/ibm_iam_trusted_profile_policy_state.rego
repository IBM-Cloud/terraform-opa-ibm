package ibmcloud.resources.state.ibm_iam_trusted_profile_policy
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profile_policy"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_trusted_profile_policy", "managed").resources[_]
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
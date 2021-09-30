package ibmcloud.resources.after.ibm_iam_custom_role
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_custom_role"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_iam_custom_role").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
display_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "display_name", null) |
        res := resources_map[_]
        true
     }
}
service = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service", null) |
        res := resources_map[_]
        true
     }
}
actions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "actions", null) |
        res := resources_map[_]
        true
     }
}


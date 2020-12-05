package ibmcloud.resources.planned.ibm_iam_custom_role
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_custom_role"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_iam_custom_role").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
actions = ret {
    ret := {res.address: object.get(res.attributes, "actions", null) |
        res := resources_map[_]
        true
     }
}
display_name = ret {
    ret := {res.address: object.get(res.attributes, "display_name", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {res.address: object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
service = ret {
    ret := {res.address: object.get(res.attributes, "service", null) |
        res := resources_map[_]
        true
     }
}


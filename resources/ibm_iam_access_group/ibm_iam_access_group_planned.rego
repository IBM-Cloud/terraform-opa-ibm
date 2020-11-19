package ibmcloud.resources.planned.ibm_iam_access_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_iam_access_group"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_iam_access_group").resources[_]
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}


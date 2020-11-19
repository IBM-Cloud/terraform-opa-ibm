package ibmcloud.resources.after.ibm_iam_service_id
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_iam_service_id"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_iam_service_id").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}


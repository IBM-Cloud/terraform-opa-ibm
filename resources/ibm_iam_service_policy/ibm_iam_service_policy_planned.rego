package ibmcloud.resources.planned.ibm_iam_service_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_iam_service_policy"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_iam_service_policy").resources[_]
}
iam_service_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_service_id", null) |
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


package ibmcloud.resources.planned.ibm_function_namespace
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_function_namespace"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_function_namespace").resources[_]
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
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


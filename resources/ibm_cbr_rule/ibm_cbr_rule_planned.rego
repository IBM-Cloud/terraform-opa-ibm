package ibmcloud.resources.planned.ibm_cbr_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cbr_rule"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cbr_rule").resources[_]
}
contexts = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "contexts", null) |
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
enforcement_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enforcement_mode", null) |
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
x_correlation_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "x_correlation_id", null) |
        res := resources_map[_]
        true
     }
}
transaction_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "transaction_id", null) |
        res := resources_map[_]
        true
     }
}


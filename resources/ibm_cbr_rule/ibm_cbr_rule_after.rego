package ibmcloud.resources.after.ibm_cbr_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cbr_rule"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cbr_rule").resources[_]
}
resources = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resources", null) |
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
contexts = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "contexts", null) |
        res := resources_map[_]
        true
     }
}


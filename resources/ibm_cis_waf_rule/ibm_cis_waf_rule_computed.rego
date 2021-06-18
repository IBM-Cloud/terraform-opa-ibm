package ibmcloud.resources.computed.ibm_cis_waf_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_waf_rule"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_waf_rule").resources[_]
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "group", null) |
        res := resources_map[_]
        true
     }
}
allowed_modes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allowed_modes", null) |
        res := resources_map[_]
        true
     }
}
priority = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "priority", null) |
        res := resources_map[_]
        true
     }
}


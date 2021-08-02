package ibmcloud.resources.computed.ibm_cis_waf_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_waf_group"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_waf_group").resources[_]
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
modified_rules_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_rules_count", null) |
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
rules_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rules_count", null) |
        res := resources_map[_]
        true
     }
}


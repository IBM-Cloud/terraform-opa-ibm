package ibmcloud.resources.planned.ibm_cis_waf_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_waf_rule"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_waf_rule").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
rule_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rule_id", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
package_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "package_id", null) |
        res := resources_map[_]
        true
     }
}
mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mode", null) |
        res := resources_map[_]
        true
     }
}


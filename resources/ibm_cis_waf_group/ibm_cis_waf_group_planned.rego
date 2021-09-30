package ibmcloud.resources.planned.ibm_cis_waf_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_waf_group"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_waf_group").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
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
mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mode", null) |
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
group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "group_id", null) |
        res := resources_map[_]
        true
     }
}


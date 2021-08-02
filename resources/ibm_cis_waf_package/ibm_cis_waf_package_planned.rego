package ibmcloud.resources.planned.ibm_cis_waf_package
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_waf_package"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_waf_package").resources[_]
}
sensitivity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sensitivity", null) |
        res := resources_map[_]
        true
     }
}
action_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action_mode", null) |
        res := resources_map[_]
        true
     }
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
package_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "package_id", null) |
        res := resources_map[_]
        true
     }
}


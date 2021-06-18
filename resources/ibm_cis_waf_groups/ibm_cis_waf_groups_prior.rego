package ibmcloud.resources.prior.ibm_cis_waf_groups
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_waf_groups"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cis_waf_groups").resources[_]
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


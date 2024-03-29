package ibmcloud.resources.prior.ibm_cis_domain
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_domain"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cis_domain").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
verification_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "verification_key", null) |
        res := resources_map[_]
        true
     }
}
cname_suffix = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cname_suffix", null) |
        res := resources_map[_]
        true
     }
}
domain = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain", null) |
        res := resources_map[_]
        true
     }
}


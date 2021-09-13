package ibmcloud.resources.prior.ibm_cis_dns_records
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_dns_records"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cis_dns_records").resources[_]
}
file = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file", null) |
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


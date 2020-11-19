package ibmcloud.resources.prior.ibm_dns_domain
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_dns_domain"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_dns_domain").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}


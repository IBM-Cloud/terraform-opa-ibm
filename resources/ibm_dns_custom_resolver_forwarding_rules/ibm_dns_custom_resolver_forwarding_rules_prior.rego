package ibmcloud.resources.prior.ibm_dns_custom_resolver_forwarding_rules
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_custom_resolver_forwarding_rules"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_dns_custom_resolver_forwarding_rules").resources[_]
}
resolver_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resolver_id", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}


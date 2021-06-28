package ibmcloud.resources.prior.ibm_is_network_acl_rules
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_network_acl_rules"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_network_acl_rules").resources[_]
}
network_acl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_acl", null) |
        res := resources_map[_]
        true
     }
}


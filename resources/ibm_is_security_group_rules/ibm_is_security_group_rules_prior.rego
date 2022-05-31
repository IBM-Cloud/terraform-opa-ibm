package ibmcloud.resources.prior.ibm_is_security_group_rules
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_security_group_rules"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_security_group_rules").resources[_]
}
security_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_group", null) |
        res := resources_map[_]
        true
     }
}


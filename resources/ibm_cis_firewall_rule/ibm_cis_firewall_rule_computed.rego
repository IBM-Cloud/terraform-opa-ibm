package ibmcloud.resources.computed.ibm_cis_firewall_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_firewall_rule"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_firewall_rule").resources[_]
}
priority = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "priority", null) |
        res := resources_map[_]
        true
     }
}


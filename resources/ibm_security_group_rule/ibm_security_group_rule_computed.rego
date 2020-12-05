package ibmcloud.resources.computed.ibm_security_group_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_security_group_rule"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_security_group_rule").resources[_]
}


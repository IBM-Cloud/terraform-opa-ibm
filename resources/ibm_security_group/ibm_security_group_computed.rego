package ibmcloud.resources.computed.ibm_security_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_security_group"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_security_group").resources[_]
}


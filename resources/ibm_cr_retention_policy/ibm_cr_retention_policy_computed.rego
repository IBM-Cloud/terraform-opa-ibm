package ibmcloud.resources.computed.ibm_cr_retention_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cr_retention_policy"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cr_retention_policy").resources[_]
}


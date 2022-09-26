package ibmcloud.resources.computed.ibm_cos_bucket_replication_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cos_bucket_replication_rule"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cos_bucket_replication_rule").resources[_]
}


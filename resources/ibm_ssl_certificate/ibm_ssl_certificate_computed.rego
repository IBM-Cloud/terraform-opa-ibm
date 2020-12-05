package ibmcloud.resources.computed.ibm_ssl_certificate
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_ssl_certificate"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_ssl_certificate").resources[_]
}


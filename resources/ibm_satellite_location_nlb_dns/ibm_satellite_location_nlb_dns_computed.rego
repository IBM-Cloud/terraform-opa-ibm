package ibmcloud.resources.computed.ibm_satellite_location_nlb_dns
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_location_nlb_dns"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_satellite_location_nlb_dns").resources[_]
}


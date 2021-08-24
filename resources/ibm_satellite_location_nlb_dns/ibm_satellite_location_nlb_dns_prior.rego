package ibmcloud.resources.prior.ibm_satellite_location_nlb_dns
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_location_nlb_dns"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_satellite_location_nlb_dns").resources[_]
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}


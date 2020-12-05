package ibmcloud.resources.prior.ibm_api_gateway
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_api_gateway"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_api_gateway").resources[_]
}
service_instance_crn = ret {
    ret := {res.address: object.get(res.attributes, "service_instance_crn", null) |
        res := resources_map[_]
        true
     }
}


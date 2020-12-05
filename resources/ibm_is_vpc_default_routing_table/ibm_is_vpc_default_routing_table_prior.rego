package ibmcloud.resources.prior.ibm_is_vpc_default_routing_table
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_default_routing_table"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_vpc_default_routing_table").resources[_]
}
vpc = ret {
    ret := {res.address: object.get(res.attributes, "vpc", null) |
        res := resources_map[_]
        true
     }
}


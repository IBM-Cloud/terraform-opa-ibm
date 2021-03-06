package ibmcloud.resources.prior.ibm_is_vpc_routing_tables
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_routing_tables"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_vpc_routing_tables").resources[_]
}
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
        res := resources_map[_]
        true
     }
}


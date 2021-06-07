package ibmcloud.resources.prior.ibm_is_vpc_routing_table_routes
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_routing_table_routes"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_vpc_routing_table_routes").resources[_]
}
routing_table = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routing_table", null) |
        res := resources_map[_]
        true
     }
}
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
        res := resources_map[_]
        true
     }
}


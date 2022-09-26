package ibmcloud.resources.prior.ibm_is_vpc_routing_table_route
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_routing_table_route"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_vpc_routing_table_route").resources[_]
}
route_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "route_id", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
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


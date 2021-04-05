package ibmcloud.resources.after.ibm_is_vpc_routing_table
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_routing_table"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_vpc_routing_table").resources[_]
}
route_direct_link_ingress = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "route_direct_link_ingress", null) |
        res := resources_map[_]
        true
     }
}
route_transit_gateway_ingress = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "route_transit_gateway_ingress", null) |
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
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
        res := resources_map[_]
        true
     }
}
route_vpc_zone_ingress = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "route_vpc_zone_ingress", null) |
        res := resources_map[_]
        true
     }
}


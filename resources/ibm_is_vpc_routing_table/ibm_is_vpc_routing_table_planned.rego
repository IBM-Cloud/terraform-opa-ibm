package ibmcloud.resources.planned.ibm_is_vpc_routing_table
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_routing_table"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_vpc_routing_table").resources[_]
}
vpc = ret {
    ret := {res.address: object.get(res.attributes, "vpc", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
route_direct_link_ingress = ret {
    ret := {res.address: object.get(res.attributes, "route_direct_link_ingress", null) |
        res := resources_map[_]
        true
     }
}
route_transit_gateway_ingress = ret {
    ret := {res.address: object.get(res.attributes, "route_transit_gateway_ingress", null) |
        res := resources_map[_]
        true
     }
}
route_vpc_zone_ingress = ret {
    ret := {res.address: object.get(res.attributes, "route_vpc_zone_ingress", null) |
        res := resources_map[_]
        true
     }
}


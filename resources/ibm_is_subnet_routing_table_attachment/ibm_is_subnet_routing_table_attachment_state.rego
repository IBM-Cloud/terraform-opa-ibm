package ibmcloud.resources.state.ibm_is_subnet_routing_table_attachment
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnet_routing_table_attachment"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_subnet_routing_table_attachment", "managed").resources[_]
}
subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnets", null) |
        res := resources_map[_]
        true
     }
}
routes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routes", null) |
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
route_direct_link_ingress = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "route_direct_link_ingress", null) |
        res := resources_map[_]
        true
     }
}
lifecycle_state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lifecycle_state", null) |
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
resource_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_type", null) |
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
subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet", null) |
        res := resources_map[_]
        true
     }
}
is_default = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_default", null) |
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

package ibmcloud.resources.model.ibm_is_vpc_routing_table_route
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_routing_table_route"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_vpc_routing_table_route").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_vpc_routing_table_route", "managed").resources[_]
}
destination = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination", null) |
        res := resources_map[_]
        true
     }
}
action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action", null) |
        res := resources_map[_]
        true
     }
}
origin = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "origin", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
route_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "route_id", null) |
        res := resources_map[_]
        true
     }
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
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
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
        res := resources_map[_]
        true
     }
}
next_hop = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "next_hop", null) |
        res := resources_map[_]
        true
     }
}


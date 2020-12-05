package ibmcloud.resources.computed.ibm_is_vpc_routing_table_route
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_routing_table_route"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_vpc_routing_table_route").resources[_]
}
created_at = ret {
    ret := {res.address: object.get(res.attributes, "created_at", null) |
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
route_id = ret {
    ret := {res.address: object.get(res.attributes, "route_id", null) |
        res := resources_map[_]
        true
     }
}
href = ret {
    ret := {res.address: object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
lifecycle_state = ret {
    ret := {res.address: object.get(res.attributes, "lifecycle_state", null) |
        res := resources_map[_]
        true
     }
}
origin = ret {
    ret := {res.address: object.get(res.attributes, "origin", null) |
        res := resources_map[_]
        true
     }
}


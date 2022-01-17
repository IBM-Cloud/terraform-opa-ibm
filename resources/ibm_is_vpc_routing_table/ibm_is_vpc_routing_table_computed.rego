package ibmcloud.resources.computed.ibm_is_vpc_routing_table
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_routing_table"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_vpc_routing_table").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
is_default = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_default", null) |
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
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
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
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnets", null) |
        res := resources_map[_]
        true
     }
}


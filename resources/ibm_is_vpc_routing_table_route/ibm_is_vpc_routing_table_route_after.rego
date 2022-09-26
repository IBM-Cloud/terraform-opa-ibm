package ibmcloud.resources.after.ibm_is_vpc_routing_table_route
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_routing_table_route"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_vpc_routing_table_route").resources[_]
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
destination = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination", null) |
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
action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action", null) |
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
next_hop = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "next_hop", null) |
        res := resources_map[_]
        true
     }
}


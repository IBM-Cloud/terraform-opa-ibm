package ibmcloud.resources.after.ibm_is_vpc_route
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_route"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_vpc_route").resources[_]
}
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
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
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}


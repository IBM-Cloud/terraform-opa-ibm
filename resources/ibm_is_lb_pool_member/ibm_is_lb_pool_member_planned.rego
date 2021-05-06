package ibmcloud.resources.planned.ibm_is_lb_pool_member
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_pool_member"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_lb_pool_member").resources[_]
}
pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pool", null) |
        res := resources_map[_]
        true
     }
}
lb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lb", null) |
        res := resources_map[_]
        true
     }
}
target_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_address", null) |
        res := resources_map[_]
        true
     }
}
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
target_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_id", null) |
        res := resources_map[_]
        true
     }
}
weight = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "weight", null) |
        res := resources_map[_]
        true
     }
}


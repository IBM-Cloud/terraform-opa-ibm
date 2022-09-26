package ibmcloud.resources.state.data.ibm_is_lb_pool_member
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_pool_member"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_lb_pool_member", "data").resources[_]
}
weight = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "weight", null) |
        res := resources_map[_]
        true
     }
}
pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pool", null) |
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
health = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health", null) |
        res := resources_map[_]
        true
     }
}
target = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target", null) |
        res := resources_map[_]
        true
     }
}
provisioning_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "provisioning_status", null) |
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
member = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "member", null) |
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
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}

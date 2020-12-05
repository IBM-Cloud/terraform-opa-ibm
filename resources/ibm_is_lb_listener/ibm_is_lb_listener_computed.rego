package ibmcloud.resources.computed.ibm_is_lb_listener
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_listener"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_lb_listener").resources[_]
}
listener_id = ret {
    ret := {res.address: object.get(res.attributes, "listener_id", null) |
        res := resources_map[_]
        true
     }
}
default_pool = ret {
    ret := {res.address: object.get(res.attributes, "default_pool", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {res.address: object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
related_crn = ret {
    ret := {res.address: object.get(res.attributes, "related_crn", null) |
        res := resources_map[_]
        true
     }
}


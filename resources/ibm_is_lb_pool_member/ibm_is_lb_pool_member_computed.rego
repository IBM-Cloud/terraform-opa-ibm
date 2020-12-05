package ibmcloud.resources.computed.ibm_is_lb_pool_member
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_pool_member"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_lb_pool_member").resources[_]
}
health = ret {
    ret := {res.address: object.get(res.attributes, "health", null) |
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
weight = ret {
    ret := {res.address: object.get(res.attributes, "weight", null) |
        res := resources_map[_]
        true
     }
}
provisioning_status = ret {
    ret := {res.address: object.get(res.attributes, "provisioning_status", null) |
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


package ibmcloud.resources.computed.ibm_pi_operations
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_operations"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_operations").resources[_]
}
pi_progress = ret {
    ret := {res.address: object.get(res.attributes, "pi_progress", null) |
        res := resources_map[_]
        true
     }
}
pi_status = ret {
    ret := {res.address: object.get(res.attributes, "pi_status", null) |
        res := resources_map[_]
        true
     }
}
addresses = ret {
    ret := {res.address: object.get(res.attributes, "addresses", null) |
        res := resources_map[_]
        true
     }
}
pi_health_status = ret {
    ret := {res.address: object.get(res.attributes, "pi_health_status", null) |
        res := resources_map[_]
        true
     }
}


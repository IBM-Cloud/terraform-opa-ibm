package ibmcloud.resources.computed.ibm_compute_monitor
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_monitor"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_compute_monitor").resources[_]
}
notified_users = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notified_users", null) |
        res := resources_map[_]
        true
     }
}


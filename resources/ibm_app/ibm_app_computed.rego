package ibmcloud.resources.computed.ibm_app
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_app").resources[_]
}
memory = ret {
    ret := {res.address: object.get(res.attributes, "memory", null) |
        res := resources_map[_]
        true
     }
}
disk_quota = ret {
    ret := {res.address: object.get(res.attributes, "disk_quota", null) |
        res := resources_map[_]
        true
     }
}


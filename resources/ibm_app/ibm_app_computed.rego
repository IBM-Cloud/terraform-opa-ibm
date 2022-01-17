package ibmcloud.resources.computed.ibm_app
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_app").resources[_]
}
disk_quota = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk_quota", null) |
        res := resources_map[_]
        true
     }
}
memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "memory", null) |
        res := resources_map[_]
        true
     }
}


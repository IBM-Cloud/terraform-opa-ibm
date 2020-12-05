package ibmcloud.resources.after.ibm_container_addons
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_addons"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_container_addons").resources[_]
}
resource_group_id = ret {
    ret := {res.address: object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
addons = ret {
    ret := {res.address: object.get(res.attributes, "addons", null) |
        res := resources_map[_]
        true
     }
}
cluster = ret {
    ret := {res.address: object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}


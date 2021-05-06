package ibmcloud.resources.after.ibm_compute_provisioning_hook
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_provisioning_hook"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_compute_provisioning_hook").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
uri = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uri", null) |
        res := resources_map[_]
        true
     }
}


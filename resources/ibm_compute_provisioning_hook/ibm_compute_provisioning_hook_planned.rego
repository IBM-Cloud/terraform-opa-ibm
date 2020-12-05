package ibmcloud.resources.planned.ibm_compute_provisioning_hook
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_provisioning_hook"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_compute_provisioning_hook").resources[_]
}
uri = ret {
    ret := {res.address: object.get(res.attributes, "uri", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}


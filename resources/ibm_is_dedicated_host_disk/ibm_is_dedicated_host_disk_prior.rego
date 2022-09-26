package ibmcloud.resources.prior.ibm_is_dedicated_host_disk
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_dedicated_host_disk"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_dedicated_host_disk").resources[_]
}
disk = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk", null) |
        res := resources_map[_]
        true
     }
}
dedicated_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dedicated_host", null) |
        res := resources_map[_]
        true
     }
}


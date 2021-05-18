package ibmcloud.resources.prior.ibm_is_dedicated_host_disks
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_dedicated_host_disks"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_dedicated_host_disks").resources[_]
}
dedicated_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dedicated_host", null) |
        res := resources_map[_]
        true
     }
}


package ibmcloud.resources.prior.ibm_container_dedicated_host
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_dedicated_host"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_dedicated_host").resources[_]
}
host_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_id", null) |
        res := resources_map[_]
        true
     }
}
host_pool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_pool_id", null) |
        res := resources_map[_]
        true
     }
}


package ibmcloud.resources.prior.ibm_container_worker_pool
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_worker_pool"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_worker_pool").resources[_]
}
cluster = ret {
    ret := {res.address: object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
worker_pool_name = ret {
    ret := {res.address: object.get(res.attributes, "worker_pool_name", null) |
        res := resources_map[_]
        true
     }
}


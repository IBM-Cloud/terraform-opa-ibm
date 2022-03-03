package ibmcloud.resources.prior.ibm_container_vpc_cluster_worker
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_vpc_cluster_worker"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_vpc_cluster_worker").resources[_]
}
cluster_name_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster_name_id", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
worker_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_id", null) |
        res := resources_map[_]
        true
     }
}


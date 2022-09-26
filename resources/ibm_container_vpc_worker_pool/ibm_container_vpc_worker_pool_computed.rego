package ibmcloud.resources.computed.ibm_container_vpc_worker_pool
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_vpc_worker_pool"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_container_vpc_worker_pool").resources[_]
}
labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "labels", null) |
        res := resources_map[_]
        true
     }
}
worker_pool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_pool_id", null) |
        res := resources_map[_]
        true
     }
}
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
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


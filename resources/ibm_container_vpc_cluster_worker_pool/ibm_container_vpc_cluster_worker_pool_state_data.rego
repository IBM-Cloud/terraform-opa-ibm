package ibmcloud.resources.state.data.ibm_container_vpc_cluster_worker_pool
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_vpc_cluster_worker_pool"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_vpc_cluster_worker_pool", "data").resources[_]
}
worker_pool_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_pool_name", null) |
        res := resources_map[_]
        true
     }
}
labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "labels", null) |
        res := resources_map[_]
        true
     }
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
flavor = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "flavor", null) |
        res := resources_map[_]
        true
     }
}
zones = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zones", null) |
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
vpc_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc_id", null) |
        res := resources_map[_]
        true
     }
}
worker_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_count", null) |
        res := resources_map[_]
        true
     }
}
isolation = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "isolation", null) |
        res := resources_map[_]
        true
     }
}

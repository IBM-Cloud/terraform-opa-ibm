package ibmcloud.resources.state.ibm_satellite_cluster_worker_pool_zone_attachment
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_cluster_worker_pool_zone_attachment"
}

resources_map[attr]{
    attr := state.get_resources("ibm_satellite_cluster_worker_pool_zone_attachment", "managed").resources[_]
}
worker_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_count", null) |
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
worker_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_pool", null) |
        res := resources_map[_]
        true
     }
}
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
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
autobalance_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "autobalance_enabled", null) |
        res := resources_map[_]
        true
     }
}
messages = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "messages", null) |
        res := resources_map[_]
        true
     }
}

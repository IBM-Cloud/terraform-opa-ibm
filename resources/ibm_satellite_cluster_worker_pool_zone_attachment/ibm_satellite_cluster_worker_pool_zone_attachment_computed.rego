package ibmcloud.resources.computed.ibm_satellite_cluster_worker_pool_zone_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_cluster_worker_pool_zone_attachment"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_satellite_cluster_worker_pool_zone_attachment").resources[_]
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
worker_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_count", null) |
        res := resources_map[_]
        true
     }
}


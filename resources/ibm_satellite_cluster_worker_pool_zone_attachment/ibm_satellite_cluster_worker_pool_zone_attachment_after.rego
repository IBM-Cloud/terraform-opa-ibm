package ibmcloud.resources.after.ibm_satellite_cluster_worker_pool_zone_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_cluster_worker_pool_zone_attachment"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_satellite_cluster_worker_pool_zone_attachment").resources[_]
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


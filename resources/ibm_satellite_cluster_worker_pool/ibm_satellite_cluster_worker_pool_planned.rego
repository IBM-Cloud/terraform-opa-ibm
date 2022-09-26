package ibmcloud.resources.planned.ibm_satellite_cluster_worker_pool
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_cluster_worker_pool"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_satellite_cluster_worker_pool").resources[_]
}
disk_encryption = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk_encryption", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
isolation = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "isolation", null) |
        res := resources_map[_]
        true
     }
}
entitlement = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "entitlement", null) |
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
worker_pool_labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_pool_labels", null) |
        res := resources_map[_]
        true
     }
}
host_labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_labels", null) |
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
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}


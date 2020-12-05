package ibmcloud.resources.after.ibm_container_vpc_worker_pool
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_vpc_worker_pool"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_container_vpc_worker_pool").resources[_]
}
worker_count = ret {
    ret := {res.address: object.get(res.attributes, "worker_count", null) |
        res := resources_map[_]
        true
     }
}
entitlement = ret {
    ret := {res.address: object.get(res.attributes, "entitlement", null) |
        res := resources_map[_]
        true
     }
}
cluster = ret {
    ret := {res.address: object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
flavor = ret {
    ret := {res.address: object.get(res.attributes, "flavor", null) |
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
labels = ret {
    ret := {res.address: object.get(res.attributes, "labels", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {res.address: object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
zones = ret {
    ret := {res.address: object.get(res.attributes, "zones", null) |
        res := resources_map[_]
        true
     }
}
vpc_id = ret {
    ret := {res.address: object.get(res.attributes, "vpc_id", null) |
        res := resources_map[_]
        true
     }
}


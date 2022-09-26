package ibmcloud.resources.computed.ibm_container_dedicated_host_pool
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_dedicated_host_pool"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_container_dedicated_host_pool").resources[_]
}
host_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_count", null) |
        res := resources_map[_]
        true
     }
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
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
worker_pools = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_pools", null) |
        res := resources_map[_]
        true
     }
}


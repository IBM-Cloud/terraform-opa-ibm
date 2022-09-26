package ibmcloud.resources.state.data.ibm_container_dedicated_host_pool
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_dedicated_host_pool"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_dedicated_host_pool", "data").resources[_]
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
host_pool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_pool_id", null) |
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
metro = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "metro", null) |
        res := resources_map[_]
        true
     }
}
flavor_class = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "flavor_class", null) |
        res := resources_map[_]
        true
     }
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

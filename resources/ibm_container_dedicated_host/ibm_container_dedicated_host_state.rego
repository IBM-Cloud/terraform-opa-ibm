package ibmcloud.resources.state.ibm_container_dedicated_host
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_dedicated_host"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_dedicated_host", "managed").resources[_]
}
resources = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resources", null) |
        res := resources_map[_]
        true
     }
}
workers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "workers", null) |
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
host_pool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_pool_id", null) |
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
placement_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "placement_enabled", null) |
        res := resources_map[_]
        true
     }
}
host_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_id", null) |
        res := resources_map[_]
        true
     }
}
life_cycle = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "life_cycle", null) |
        res := resources_map[_]
        true
     }
}

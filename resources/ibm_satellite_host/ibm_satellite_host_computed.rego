package ibmcloud.resources.computed.ibm_satellite_host
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_host"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_satellite_host").resources[_]
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
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
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
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
host_state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_state", null) |
        res := resources_map[_]
        true
     }
}


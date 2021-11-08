package ibmcloud.resources.model.ibm_satellite_host
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_host"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_satellite_host").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_satellite_host", "managed").resources[_]
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
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
host_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_id", null) |
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
host_provider = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_provider", null) |
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


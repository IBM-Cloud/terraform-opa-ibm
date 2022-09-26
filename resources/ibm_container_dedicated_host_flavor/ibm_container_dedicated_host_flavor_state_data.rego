package ibmcloud.resources.state.data.ibm_container_dedicated_host_flavor
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_dedicated_host_flavor"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_dedicated_host_flavor", "data").resources[_]
}
max_memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_memory", null) |
        res := resources_map[_]
        true
     }
}
instance_storage = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_storage", null) |
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
host_flavor_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_flavor_id", null) |
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
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
deprecated = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "deprecated", null) |
        res := resources_map[_]
        true
     }
}
max_vcpus = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_vcpus", null) |
        res := resources_map[_]
        true
     }
}

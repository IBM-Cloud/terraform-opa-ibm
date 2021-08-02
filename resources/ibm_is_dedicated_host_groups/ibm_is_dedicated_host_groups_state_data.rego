package ibmcloud.resources.state.data.ibm_is_dedicated_host_groups
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_dedicated_host_groups"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_dedicated_host_groups", "data").resources[_]
}
host_groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_groups", null) |
        res := resources_map[_]
        true
     }
}
total_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_count", null) |
        res := resources_map[_]
        true
     }
}
first = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "first", null) |
        res := resources_map[_]
        true
     }
}
limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "limit", null) |
        res := resources_map[_]
        true
     }
}
next = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "next", null) |
        res := resources_map[_]
        true
     }
}

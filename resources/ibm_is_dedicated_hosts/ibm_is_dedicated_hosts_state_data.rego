package ibmcloud.resources.state.data.ibm_is_dedicated_hosts
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_dedicated_hosts"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_dedicated_hosts", "data").resources[_]
}
host_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_group", null) |
        res := resources_map[_]
        true
     }
}
dedicated_hosts = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dedicated_hosts", null) |
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

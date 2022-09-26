package ibmcloud.resources.state.data.ibm_container_dedicated_host_flavors
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_dedicated_host_flavors"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_dedicated_host_flavors", "data").resources[_]
}
host_flavors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_flavors", null) |
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

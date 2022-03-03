package ibmcloud.resources.state.data.ibm_is_floating_ips
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_floating_ips"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_floating_ips", "data").resources[_]
}
floating_ips = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "floating_ips", null) |
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

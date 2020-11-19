package ibmcloud.resources.state.data.ibm_resource_group
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_resource_group"
}

resources_map[attr]{
    attr := state.get_resources("ibm_resource_group", "data").resources[_]
}
is_default = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_default", null) |
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

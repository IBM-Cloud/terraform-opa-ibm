package ibmcloud.resources.state.data.ibm_enterprises
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_enterprises"
}

resources_map[attr]{
    attr := state.get_resources("ibm_enterprises", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
enterprises = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enterprises", null) |
        res := resources_map[_]
        true
     }
}

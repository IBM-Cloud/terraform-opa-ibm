package ibmcloud.resources.state.data.ibm_cr_namespaces
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cr_namespaces"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cr_namespaces", "data").resources[_]
}
namespaces = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "namespaces", null) |
        res := resources_map[_]
        true
     }
}

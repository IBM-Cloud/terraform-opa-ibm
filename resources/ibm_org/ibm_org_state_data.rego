package ibmcloud.resources.state.data.ibm_org
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_org"
}

resources_map[attr]{
    attr := state.get_resources("ibm_org", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
org = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "org", null) |
        res := resources_map[_]
        true
     }
}

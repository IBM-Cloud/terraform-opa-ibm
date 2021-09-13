package ibmcloud.resources.state.data.ibm_space
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_space"
}

resources_map[attr]{
    attr := state.get_resources("ibm_space", "data").resources[_]
}
org = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "org", null) |
        res := resources_map[_]
        true
     }
}
auditors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "auditors", null) |
        res := resources_map[_]
        true
     }
}
managers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "managers", null) |
        res := resources_map[_]
        true
     }
}
developers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "developers", null) |
        res := resources_map[_]
        true
     }
}
space = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "space", null) |
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

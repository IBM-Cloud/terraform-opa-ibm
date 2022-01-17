package ibmcloud.resources.state.data.ibm_scc_posture_scopes
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_scopes"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_posture_scopes", "data").resources[_]
}
first = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "first", null) |
        res := resources_map[_]
        true
     }
}
last = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last", null) |
        res := resources_map[_]
        true
     }
}
previous = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "previous", null) |
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
scopes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scopes", null) |
        res := resources_map[_]
        true
     }
}
offset = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offset", null) |
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
total_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_count", null) |
        res := resources_map[_]
        true
     }
}

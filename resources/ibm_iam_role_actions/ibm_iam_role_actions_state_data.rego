package ibmcloud.resources.state.data.ibm_iam_role_actions
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_role_actions"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_role_actions", "data").resources[_]
}
reader_plus = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reader_plus", null) |
        res := resources_map[_]
        true
     }
}
writer = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "writer", null) |
        res := resources_map[_]
        true
     }
}
service = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service", null) |
        res := resources_map[_]
        true
     }
}
reader = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reader", null) |
        res := resources_map[_]
        true
     }
}
manager = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "manager", null) |
        res := resources_map[_]
        true
     }
}

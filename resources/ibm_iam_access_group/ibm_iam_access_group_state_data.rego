package ibmcloud.resources.state.data.ibm_iam_access_group
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_access_group"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_access_group", "data").resources[_]
}
groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "groups", null) |
        res := resources_map[_]
        true
     }
}
access_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "access_group_name", null) |
        res := resources_map[_]
        true
     }
}

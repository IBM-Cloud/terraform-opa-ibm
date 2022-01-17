package ibmcloud.resources.state.data.ibm_iam_access_group_policy
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_access_group_policy"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_access_group_policy", "data").resources[_]
}
access_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "access_group_id", null) |
        res := resources_map[_]
        true
     }
}
sort = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sort", null) |
        res := resources_map[_]
        true
     }
}
policies = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policies", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_iam_users
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_users"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_users", "data").resources[_]
}
users = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "users", null) |
        res := resources_map[_]
        true
     }
}

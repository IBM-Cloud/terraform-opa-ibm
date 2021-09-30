package ibmcloud.resources.state.data.ibm_iam_auth_token
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_auth_token"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_auth_token", "data").resources[_]
}
uaa_access_token = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uaa_access_token", null) |
        res := resources_map[_]
        true
     }
}
uaa_refresh_token = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uaa_refresh_token", null) |
        res := resources_map[_]
        true
     }
}
iam_access_token = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_access_token", null) |
        res := resources_map[_]
        true
     }
}
iam_refresh_token = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_refresh_token", null) |
        res := resources_map[_]
        true
     }
}

package ibmcloud.resources.state.data.ibm_iam_trusted_profile_links
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profile_links"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_trusted_profile_links", "data").resources[_]
}
links = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "links", null) |
        res := resources_map[_]
        true
     }
}
profile_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile_id", null) |
        res := resources_map[_]
        true
     }
}

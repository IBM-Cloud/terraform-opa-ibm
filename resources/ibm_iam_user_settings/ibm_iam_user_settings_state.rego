package ibmcloud.resources.state.ibm_iam_user_settings
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_user_settings"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_user_settings", "managed").resources[_]
}
iam_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_id", null) |
        res := resources_map[_]
        true
     }
}
allowed_ip_addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allowed_ip_addresses", null) |
        res := resources_map[_]
        true
     }
}

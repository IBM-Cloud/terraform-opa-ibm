package ibmcloud.resources.state.ibm_iam_access_group_account_settings
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_access_group_account_settings"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_access_group_account_settings", "managed").resources[_]
}
public_access_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_access_enabled", null) |
        res := resources_map[_]
        true
     }
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}

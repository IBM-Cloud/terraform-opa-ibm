package ibmcloud.resources.state.data.ibm_account
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_account"
}

resources_map[attr]{
    attr := state.get_resources("ibm_account", "data").resources[_]
}
org_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "org_guid", null) |
        res := resources_map[_]
        true
     }
}
account_users = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_users", null) |
        res := resources_map[_]
        true
     }
}

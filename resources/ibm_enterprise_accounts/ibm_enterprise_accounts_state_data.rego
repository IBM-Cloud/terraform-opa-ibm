package ibmcloud.resources.state.data.ibm_enterprise_accounts
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_enterprise_accounts"
}

resources_map[attr]{
    attr := state.get_resources("ibm_enterprise_accounts", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
accounts = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "accounts", null) |
        res := resources_map[_]
        true
     }
}

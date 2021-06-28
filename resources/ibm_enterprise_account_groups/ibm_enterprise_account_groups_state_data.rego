package ibmcloud.resources.state.data.ibm_enterprise_account_groups
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_enterprise_account_groups"
}

resources_map[attr]{
    attr := state.get_resources("ibm_enterprise_account_groups", "data").resources[_]
}
account_groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_groups", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

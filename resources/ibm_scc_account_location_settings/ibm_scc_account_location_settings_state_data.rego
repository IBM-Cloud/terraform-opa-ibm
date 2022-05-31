package ibmcloud.resources.state.data.ibm_scc_account_location_settings
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_account_location_settings"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_account_location_settings", "data").resources[_]
}
id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "id", null) |
        res := resources_map[_]
        true
     }
}

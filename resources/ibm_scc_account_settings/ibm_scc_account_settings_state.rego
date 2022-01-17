package ibmcloud.resources.state.ibm_scc_account_settings
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_account_settings"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_account_settings", "managed").resources[_]
}
location_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location_id", null) |
        res := resources_map[_]
        true
     }
}

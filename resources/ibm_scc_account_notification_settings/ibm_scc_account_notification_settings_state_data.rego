package ibmcloud.resources.state.data.ibm_scc_account_notification_settings
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_account_notification_settings"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_account_notification_settings", "data").resources[_]
}
instance_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_crn", null) |
        res := resources_map[_]
        true
     }
}

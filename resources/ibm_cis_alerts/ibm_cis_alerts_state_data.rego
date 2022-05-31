package ibmcloud.resources.state.data.ibm_cis_alerts
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_alerts"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_alerts", "data").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
alert_policies = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "alert_policies", null) |
        res := resources_map[_]
        true
     }
}
